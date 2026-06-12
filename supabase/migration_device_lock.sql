-- Migration: device lock system for app licenses
-- Apply in Supabase SQL editor (project shared with Celestial Chantiers mobile app)

-- 1. New columns on licenses table
alter table licenses add column if not exists company      text;
alter table licenses add column if not exists device_id    text;
alter table licenses add column if not exists device_model text;
alter table licenses add column if not exists device_os    text;
alter table licenses add column if not exists locked       boolean not null default false;

-- 2. Fix RLS: drop the admin SELECT policy that allows the admin Supabase account
--    to read ALL licenses from the mobile app (anon key).
--    The website uses service_role (bypasses RLS entirely), so this policy is unnecessary
--    and creates the admin bypass bug in Celestial Chantiers.
drop policy if exists "Admins can read all licenses" on licenses;

-- 3. RPC function called by the mobile app to register a device on first login.
--    SECURITY DEFINER so it can write to licenses despite the user having no write RLS policy.
--    Ownership is verified inside the function via auth.uid().
create or replace function register_device(
  p_license_id   uuid,
  p_device_id    text,
  p_device_model text,
  p_device_os    text
) returns jsonb
language plpgsql security definer
as $$
declare
  v_lic record;
begin
  select id, locked, device_id, user_id
    into v_lic
    from licenses
   where id = p_license_id and user_id = auth.uid();

  if not found then
    return jsonb_build_object('error', 'not_found');
  end if;

  if v_lic.locked then
    if v_lic.device_id = p_device_id then
      return jsonb_build_object('ok', true); -- same device reconnecting
    else
      return jsonb_build_object('error', 'wrong_device');
    end if;
  end if;

  update licenses
     set device_id    = p_device_id,
         device_model = p_device_model,
         device_os    = p_device_os,
         locked       = true
   where id = p_license_id;

  return jsonb_build_object('ok', true);
end;
$$;
