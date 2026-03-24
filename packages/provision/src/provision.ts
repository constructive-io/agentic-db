/**
 * provision.ts \u2014 Orchestrator for Agent OS schema provisioning
 *
 * Reads DATABASE_ID, ACCESS_TOKEN, DATABASE_NAME from .env (set by create-db)
 * and runs all schema modules + index creation sequentially.
 *
 * Usage:  pnpm run provision
 */

import { config } from './config';
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

  const schemas = [
    ['CRM',              './schemas/crm'],
    ['Agent Core',       './schemas/agent'],
    ['Agent Runtime',    './schemas/runtime'],
    ['Projects',         './schemas/projects'],
    ['Codebase',         './schemas/codebase'],
    ['Life OS',          './schemas/life_os'],
    ['Email & Calendar', './schemas/email_calendar'],
    ['Autonomy',         './schemas/autonomy'],
    ['Cross-Relations',  './schemas/cross-relations'],
  ];

  for (const [label, mod] of schemas) {
    await run(label, mod);
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
