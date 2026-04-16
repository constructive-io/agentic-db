/**
 * provision.ts \u2014 Orchestrator for Agent OS schema provisioning
 *
 * Reads DATABASE_ID, ACCESS_TOKEN, DATABASE_NAME from .env (set by create-db)
 * and runs all schema modules + index creation sequentially.
 *
 * Usage:  pnpm run provision
 */

import { config } from './config';
import { createPlatformClient, withRetry } from './helpers';
import { Pool } from 'pg';

const UUID_SEED = 'agentic-db';

async function run(label: string, mod: string) {
  console.log(`\n${'='.repeat(60)}`);
  console.log(`  ${label}`);
  console.log('='.repeat(60));

  const m = await import(mod);
  if (typeof m.default === 'function') {
    await m.default();
  } else {
    throw new Error(`Module ${mod} does not export a default function`);
  }
}

async function main() {
  console.log('\n\ud83d\ude80 Agentic DB \u2014 Schema Provisioning\n');
  console.log(`   Database:  ${config.databaseName}`);
  console.log(`   DB ID:     ${config.databaseId}`);
  console.log(`   Endpoint:  ${config.apiEndpoint}`);

  if (!config.databaseId || !config.accessToken) {
    console.error('\n\u274c Missing DATABASE_ID or ACCESS_TOKEN in .env');
    console.error('   Run: pnpm run create-db\n');
    process.exit(1);
  }

  // Set all database-level session vars via ALTER DATABASE SET so every
  // GraphQL connection inherits them automatically (no env vars needed
  // on the server). This replaces the env-var approach from PR #816.
  const pgAvailable = !!process.env.PGHOST;
  if (pgAvailable) {
    console.log('\n\ud83c\udfaf Configuring database-level settings...');
    const pool = new Pool({ database: process.env.PGDATABASE || 'constructive' });
    const dbName = process.env.PGDATABASE || 'constructive';

    // Deterministic UUIDs — stable IDs during provision
    await pool.query(`ALTER DATABASE "${dbName}" SET metaschema.deterministic_ids = 'true'`);
    await pool.query(`ALTER DATABASE "${dbName}" SET metaschema.uuid_seed = '${UUID_SEED}'`);

    // Schema naming strategy — clean names without hash suffixes, using underscores
    await pool.query(`ALTER DATABASE "${dbName}" SET constructive.simple_schema_names = 'true'`);
    await pool.query(`ALTER DATABASE "${dbName}" SET constructive.schema_use_underscores = 'true'`);

    await pool.end();
    console.log('   metaschema.deterministic_ids = true (seed: ' + UUID_SEED + ')');
    console.log('   constructive.simple_schema_names = true');
    console.log('   constructive.schema_use_underscores = true');
  } else {
    console.log('\n\u26a0\ufe0f  PGHOST not set — skipping database-level settings.');
    console.log('   Run: eval "$(pgpm env)" before provisioning.');
  }

  // --- Create the app_public schema ---
  // With bare database.create() (no modules), the schema doesn't exist yet.
  // We create it via the SDK before running blueprint modules.
  const databaseId = config.databaseId;
  const sdk = createPlatformClient();

  console.log('\n\ud83d\udce6 Creating app_public schema...');
  try {
    const schemaResult = await withRetry(() =>
      sdk.schema.create({
        data: {
          databaseId,
          name: 'app_public',
          schemaName: 'app_public',
        },
        select: { id: true, name: true },
      }).unwrap()
    );
    const schemaId = schemaResult?.createSchema?.schema?.id;
    console.log(`   \u2713 app_public schema created (ID: ${schemaId})`);
  } catch (err: unknown) {
    const msg = err instanceof Error ? err.message : String(err);
    if (msg.includes('already exists') || msg.includes('exists')) {
      console.log('   \u2713 app_public schema already exists');
    } else {
      throw err;
    }
  }

  const schemas = [
    ['CRM',              './schemas/crm'],
    ['Agent Core',       './schemas/agent'],
    ['Agent Runtime',    './schemas/runtime'],
    ['Projects',         './schemas/projects'],
    ['Life OS',          './schemas/life_os'],
    ['Email & Calendar', './schemas/email_calendar'],
    ['Staging',          './schemas/staging'],
    ['Autonomy',         './schemas/autonomy'],
    ['Cross-Relations',  './schemas/cross-relations'],
  ];

  for (const [label, mod] of schemas) {
    await run(label, mod);
  }

  // Disable RLS on ALL tables in the database.
  // construct_blueprint and provision_relation enable RLS on junction tables
  // by default. We disable it globally since we're running without security.
  if (pgAvailable) {
    console.log('\n\ud83d\udd12 Disabling RLS on all tables...');
    const pool2 = new Pool({ database: process.env.PGDATABASE || 'constructive' });

    // 1. Get the physical schema name for this database's app_public
    const { rows: schemaRows } = await pool2.query(
      `SELECT s.id, s.schema_name FROM metaschema_public.schema s
       WHERE s.database_id = $1 AND s.name = 'app_public' LIMIT 1`,
      [databaseId]
    );
    const appSchema = schemaRows[0];
    if (appSchema) {
      // 2. Disable RLS on every table in the physical schema
      const { rows: rlsTables } = await pool2.query(
        `SELECT tablename FROM pg_tables
         WHERE schemaname = $1 AND rowsecurity = true`,
        [appSchema.schema_name]
      );
      for (const t of rlsTables) {
        await pool2.query(`ALTER TABLE "${appSchema.schema_name}"."${t.tablename}" DISABLE ROW LEVEL SECURITY`);
      }
      // 3. Update metaschema records
      await pool2.query(
        `UPDATE metaschema_public."table" SET use_rls = false
         WHERE database_id = $1 AND schema_id = $2 AND use_rls = true`,
        [databaseId, appSchema.id]
      );
      console.log(`   \u2713 Disabled RLS on ${rlsTables.length} tables`);
    }

    await pool2.end();
  }

  // Reset provision-only settings so normal operation uses random UUIDs.
  // Keep schema naming vars — they're needed at runtime too.
  if (pgAvailable) {
    console.log('\n\ud83d\udd04 Resetting provision-only settings...');
    const pool = new Pool({ database: process.env.PGDATABASE || 'constructive' });
    const dbName = process.env.PGDATABASE || 'constructive';
    await pool.query(`ALTER DATABASE "${dbName}" RESET metaschema.deterministic_ids`);
    await pool.query(`ALTER DATABASE "${dbName}" RESET metaschema.uuid_seed`);
    await pool.end();
    console.log('   Deterministic IDs reset (random UUIDs for normal operation).');
    console.log('   Schema naming settings preserved (simple names + underscores).');
  }

  console.log('\n\u2728 All schemas provisioned successfully!\n');
}

main().catch((err) => {
  console.error('\u274c Provision failed:', err.message ?? err);
  process.exit(1);
});
