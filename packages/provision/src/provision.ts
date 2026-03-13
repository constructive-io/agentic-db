/**
 * provision.ts \u2014 Orchestrator for Agent OS schema provisioning
 *
 * Reads DATABASE_ID, ACCESS_TOKEN, DATABASE_NAME from .env (set by create-db)
 * and runs all schema modules + index creation sequentially.
 *
 * Usage:  pnpm run provision
 */

import { config } from './config';

async function run(label: string, mod: string) {
  console.log(`\n${'='.repeat(60)}`);
  console.log(`  ${label}`);
  console.log('='.repeat(60));

  // Dynamic import executes the module's main()
  await import(mod);
}

async function main() {
  console.log('\n\ud83d\ude80 Agent OS \u2014 Schema Provisioning\n');
  console.log(`   Database:  ${config.databaseName}`);
  console.log(`   DB ID:     ${config.databaseId}`);
  console.log(`   Endpoint:  ${config.apiEndpoint}`);

  if (!config.databaseId || !config.accessToken) {
    console.error('\n\u274c Missing DATABASE_ID or ACCESS_TOKEN in .env');
    console.error('   Run: pnpm run create-db\n');
    process.exit(1);
  }

  const schemas = [
    ['CRM',           './schemas/crm'],
    ['Agent Core',    './schemas/agent'],
    ['Agent Runtime', './schemas/runtime'],
    ['Projects',      './schemas/projects'],
    ['Codebase',      './schemas/codebase'],
    ['Life OS',       './schemas/life_os'],
    ['Autonomy',      './schemas/autonomy'],
    ['Indexes',       './create-indexes'],
  ];

  for (const [label, mod] of schemas) {
    await run(label, mod);
  }

  console.log('\n\u2728 All schemas provisioned successfully!\n');
}

main().catch((err) => {
  console.error('\u274c Provision failed:', err.message ?? err);
  process.exit(1);
});
