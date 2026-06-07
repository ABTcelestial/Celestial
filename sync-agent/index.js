const { Client } = require('pg');
const { createClient } = require('@supabase/supabase-js');
const config = require('./config.json');

// Safety: only allow valid PostgreSQL identifier names (no SQL injection)
function validateTableName(name) {
  if (!/^[a-z_][a-z0-9_]*$/.test(name)) {
    throw new Error(`Nom de table invalide: "${name}". Seuls les caractères a-z, 0-9 et _ sont autorisés.`);
  }
}

async function resolveWorkspaceId(supabase) {
  const { data, error } = await supabase
    .from('platform_workspaces')
    .select('id, name')
    .eq('licence_key', config.licence_key)
    .eq('active', true)
    .single();

  if (error || !data) {
    throw new Error(`Licence key invalide ou workspace inactif. Vérifiez config.json.`);
  }
  return data;
}

async function syncTable(pg, supabase, workspaceId, tableName) {
  validateTableName(tableName);

  console.log(`  → Synchronisation de "${tableName}"...`);

  const result = await pg.query(`SELECT * FROM "${tableName}"`);
  const rows = result.rows;

  if (rows.length === 0) {
    console.log(`  ✓ "${tableName}" — 0 enregistrement.`);
    await logSync(supabase, workspaceId, tableName, 0, 'success', null);
    return;
  }

  // Use first column as record_id if 'id' doesn't exist
  const idKey = 'id' in rows[0] ? 'id' : Object.keys(rows[0])[0];

  const records = rows.map((row) => ({
    workspace_id: workspaceId,
    table_name: tableName,
    record_id: String(row[idKey]),
    data: row,
    synced_at: new Date().toISOString(),
  }));

  const BATCH_SIZE = 500;
  let synced = 0;

  for (let i = 0; i < records.length; i += BATCH_SIZE) {
    const batch = records.slice(i, i + BATCH_SIZE);
    const { error } = await supabase
      .from('erp_data')
      .upsert(batch, { onConflict: 'workspace_id,table_name,record_id' });

    if (error) throw new Error(`Erreur upsert: ${error.message}`);
    synced += batch.length;
  }

  console.log(`  ✓ "${tableName}" — ${synced} enregistrement(s) synchronisé(s).`);
  await logSync(supabase, workspaceId, tableName, synced, 'success', null);
}

async function logSync(supabase, workspaceId, tableName, count, status, errorMessage) {
  await supabase.from('erp_sync_logs').insert({
    workspace_id: workspaceId,
    table_name: tableName,
    records_synced: count,
    status,
    error_message: errorMessage,
  });
}

async function main() {
  const args = process.argv.slice(2);
  const allFlag = args.includes('--all');
  const tableIndex = args.indexOf('--table');
  const singleTable = tableIndex !== -1 ? args[tableIndex + 1] : null;

  const tablesToSync = singleTable ? [singleTable] : (allFlag ? config.tables : config.tables);

  if (tablesToSync.length === 0) {
    console.error('Aucune table à synchroniser. Utilisez --all ou --table <nom>');
    process.exit(1);
  }

  const supabase = createClient(config.supabase_url, config.service_role_key, {
    auth: { autoRefreshToken: false, persistSession: false },
  });

  const pg = new Client({ connectionString: config.pg_url });

  try {
    console.log('Connexion à Supabase...');
    const workspace = await resolveWorkspaceId(supabase);
    console.log(`Workspace: ${workspace.name} (${workspace.id})\n`);

    console.log('Connexion à PostgreSQL local...');
    await pg.connect();
    console.log('Connecté.\n');

    for (const tableName of tablesToSync) {
      try {
        await syncTable(pg, supabase, workspace.id, tableName);
      } catch (err) {
        console.error(`  ✗ "${tableName}" — Erreur: ${err.message}`);
        await logSync(supabase, workspace.id, tableName, 0, 'error', err.message);
      }
    }

    console.log('\nSynchronisation terminée.');
  } catch (err) {
    console.error(`Erreur fatale: ${err.message}`);
    process.exit(1);
  } finally {
    await pg.end();
  }
}

main();
