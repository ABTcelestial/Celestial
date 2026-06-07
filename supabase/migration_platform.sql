-- Platform Client Workspaces
create table if not exists platform_workspaces (
  id          uuid primary key default gen_random_uuid(),
  name        text not null,
  slug        text unique not null,
  licence_key text unique not null default gen_random_uuid()::text,
  active      boolean not null default true,
  created_at  timestamptz not null default now()
);

alter table platform_workspaces enable row level security;

create policy "admin_all_platform_workspaces" on platform_workspaces
  for all to authenticated using (true) with check (true);

-- Platform Members (linked to Clerk user IDs)
create table if not exists platform_members (
  id            uuid primary key default gen_random_uuid(),
  workspace_id  uuid not null references platform_workspaces(id) on delete cascade,
  clerk_user_id text not null,
  email         text not null,
  role          text not null check (role in ('owner', 'viewer')),
  created_at    timestamptz not null default now(),
  unique(workspace_id, clerk_user_id)
);

alter table platform_members enable row level security;

-- Members can read their own workspace membership
create policy "platform_members_read_own" on platform_members
  for select to authenticated using (
    clerk_user_id = auth.jwt()->>'sub'
  );

-- Admin (service role) manages members
create policy "admin_all_platform_members" on platform_members
  for all to authenticated using (true) with check (true);

-- ERP Table Definitions (admin creates dynamically)
create table if not exists erp_table_definitions (
  id          uuid primary key default gen_random_uuid(),
  name        text unique not null,
  label       text not null,
  columns     jsonb not null default '[]',
  description text,
  created_at  timestamptz not null default now()
);

alter table erp_table_definitions enable row level security;

create policy "admin_all_erp_table_definitions" on erp_table_definitions
  for all to authenticated using (true) with check (true);

-- Platform members can read table definitions for their workspace
create policy "platform_read_erp_table_definitions" on erp_table_definitions
  for select to authenticated using (
    id in (
      select wta.table_id from workspace_table_access wta
      join platform_members pm on pm.workspace_id = wta.workspace_id
      where pm.clerk_user_id = auth.jwt()->>'sub'
    )
  );

-- Workspace Table Access (which tables each workspace can see)
create table if not exists workspace_table_access (
  workspace_id  uuid not null references platform_workspaces(id) on delete cascade,
  table_id      uuid not null references erp_table_definitions(id) on delete cascade,
  can_export    boolean not null default true,
  primary key (workspace_id, table_id)
);

alter table workspace_table_access enable row level security;

create policy "admin_all_workspace_table_access" on workspace_table_access
  for all to authenticated using (true) with check (true);

create policy "platform_read_workspace_table_access" on workspace_table_access
  for select to authenticated using (
    workspace_id in (
      select workspace_id from platform_members
      where clerk_user_id = auth.jwt()->>'sub'
    )
  );

-- ERP Data (synced from local PostgreSQL via sync-agent)
create table if not exists erp_data (
  id           uuid primary key default gen_random_uuid(),
  workspace_id uuid not null references platform_workspaces(id) on delete cascade,
  table_name   text not null,
  record_id    text not null,
  data         jsonb not null,
  synced_at    timestamptz not null default now(),
  unique(workspace_id, table_name, record_id)
);

alter table erp_data enable row level security;

create policy "admin_all_erp_data" on erp_data
  for all to authenticated using (true) with check (true);

-- Members read only data from their workspace AND only tables they have access to
create policy "platform_read_erp_data" on erp_data
  for select to authenticated using (
    workspace_id in (
      select workspace_id from platform_members
      where clerk_user_id = auth.jwt()->>'sub'
    )
    and table_name in (
      select etd.name
      from workspace_table_access wta
      join erp_table_definitions etd on etd.id = wta.table_id
      where wta.workspace_id = erp_data.workspace_id
    )
  );

-- Anon insert allowed for sync-agent using licence_key resolution
-- (sync-agent uses service_role key directly, so no anon policy needed)

-- Platform Notifications
create table if not exists platform_notifications (
  id           uuid primary key default gen_random_uuid(),
  workspace_id uuid not null references platform_workspaces(id) on delete cascade,
  title        text not null,
  message      text not null,
  read         boolean not null default false,
  created_at   timestamptz not null default now()
);

alter table platform_notifications enable row level security;

create policy "admin_all_platform_notifications" on platform_notifications
  for all to authenticated using (true) with check (true);

create policy "platform_read_own_notifications" on platform_notifications
  for select to authenticated using (
    workspace_id in (
      select workspace_id from platform_members
      where clerk_user_id = auth.jwt()->>'sub'
    )
  );

create policy "platform_update_own_notifications" on platform_notifications
  for update to authenticated using (
    workspace_id in (
      select workspace_id from platform_members
      where clerk_user_id = auth.jwt()->>'sub'
    )
  ) with check (true);

-- Platform Messages (workspace ↔ Celestial support)
create table if not exists platform_messages (
  id            uuid primary key default gen_random_uuid(),
  workspace_id  uuid not null references platform_workspaces(id) on delete cascade,
  sender_type   text not null check (sender_type in ('client', 'admin')),
  clerk_user_id text,
  content       text not null,
  created_at    timestamptz not null default now()
);

alter table platform_messages enable row level security;

create policy "admin_all_platform_messages" on platform_messages
  for all to authenticated using (true) with check (true);

create policy "platform_read_own_messages" on platform_messages
  for select to authenticated using (
    workspace_id in (
      select workspace_id from platform_members
      where clerk_user_id = auth.jwt()->>'sub'
    )
  );

create policy "platform_insert_own_messages" on platform_messages
  for insert to authenticated with check (
    workspace_id in (
      select workspace_id from platform_members
      where clerk_user_id = auth.jwt()->>'sub'
    )
    and sender_type = 'client'
    and clerk_user_id = auth.jwt()->>'sub'
  );

-- ERP Sync Logs
create table if not exists erp_sync_logs (
  id              uuid primary key default gen_random_uuid(),
  workspace_id    uuid not null references platform_workspaces(id) on delete cascade,
  table_name      text not null,
  records_synced  integer,
  status          text not null check (status in ('success', 'error')),
  error_message   text,
  synced_at       timestamptz not null default now()
);

alter table erp_sync_logs enable row level security;

create policy "admin_all_erp_sync_logs" on erp_sync_logs
  for all to authenticated using (true) with check (true);

create policy "platform_read_own_sync_logs" on erp_sync_logs
  for select to authenticated using (
    workspace_id in (
      select workspace_id from platform_members
      where clerk_user_id = auth.jwt()->>'sub'
    )
  );

-- Indexes
create index if not exists platform_members_clerk_idx on platform_members (clerk_user_id);
create index if not exists platform_members_workspace_idx on platform_members (workspace_id);
create index if not exists erp_data_workspace_table_idx on erp_data (workspace_id, table_name);
create index if not exists erp_data_synced_at_idx on erp_data (synced_at desc);
create index if not exists platform_notifications_workspace_idx on platform_notifications (workspace_id, created_at desc);
create index if not exists platform_messages_workspace_idx on platform_messages (workspace_id, created_at asc);
create index if not exists erp_sync_logs_workspace_idx on erp_sync_logs (workspace_id, synced_at desc);
