/**
 * Non-interactive pgpm export script for agentic-db.
 *
 * Calls exportMigrations from @pgpmjs/export to generate
 * installable SQL modules from a provisioned database. pgpm 4.x+
 * filters db_migrate.sql_actions by database_id natively, so only
 * agentic-db schemas are exported (no constructive platform leakage).
 *
 * Usage:
 *   eval "$(pgpm env)" && PGDATABASE=constructive tsx src/run-export.ts
 *
 * Environment:
 *   DATABASE_ID  - UUID of the provisioned database (optional; uses latest if omitted)
 *   PGDATABASE   - Postgres database name (default: constructive)
 */

import { PgpmPackage } from '@pgpmjs/core';
import { exportMigrations } from '@pgpmjs/export';
import { getPgEnvOptions } from 'pg-env';
import { getPgPool } from 'pg-cache';
import path from 'path';

async function main() {
  const workspaceRoot = path.resolve(__dirname, '../../..');
  const extensionName = process.env.EXTENSION_NAME || 'agentic-db';
  const metaExtensionName = process.env.META_EXTENSION_NAME || 'agentic-db-services';
  const author = process.env.AUTHOR || 'Dan Lynch <pyramation@gmail.com>';
  const dbname = process.env.PGDATABASE || 'constructive';
  const username = process.env.GITHUB_USERNAME || 'pyramation-studio';
  const repoName = process.env.REPO_NAME || 'agent-os';  // GitHub repo name stays agent-os

  console.log(`\npgpm export (non-interactive)\n`);
  console.log(`  workspace: ${workspaceRoot}`);
  console.log(`  database:  ${dbname}`);
  console.log(`  extension: ${extensionName}`);
  console.log(`  author:    ${author}`);

  // 1. Initialize pgpm workspace
  const project = new PgpmPackage(workspaceRoot);
  project.ensureWorkspace();
  project.resetCwd(project.workspacePath);

  const options = getPgEnvOptions();

  // 2. Connect to the database
  const db = await getPgPool({ database: dbname });

  // 3. Get the database ID (either from env or latest provisioned)
  let databaseId = process.env.DATABASE_ID;
  let databaseName: string;
  if (!databaseId) {
    const result = await db.query(
      `SELECT id, name FROM metaschema_public.database WHERE name != 'constructive' ORDER BY name DESC LIMIT 1`
    );
    if (result.rows.length === 0) {
      console.error('No provisioned databases found in metaschema_public.database');
      process.exit(1);
    }
    databaseId = result.rows[0].id;
    databaseName = result.rows[0].name;
    console.log(`  resolved database: ${databaseName} (${databaseId})`);
  } else {
    const result = await db.query(
      `SELECT name FROM metaschema_public.database WHERE id = $1`,
      [databaseId]
    );
    databaseName = result.rows[0]?.name || 'agentic-db';
    console.log(`  database_id: ${databaseId} (${databaseName})`);
  }

  // 4. Get all schema names for this database
  const schemasResult = await db.query(
    `SELECT schema_name FROM metaschema_public.schema WHERE database_id = $1 ORDER BY schema_name`,
    [databaseId]
  );
  const schema_names = schemasResult.rows.map((r: { schema_name: string }) => r.schema_name);
  console.log(`  schemas: ${schema_names.length}`);

  if (schema_names.length === 0) {
    console.error('No schemas found for database', databaseId);
    process.exit(1);
  }

  // 5. Build dbInfo
  const dbInfo = {
    dbname,
    databaseName,
    database_ids: [databaseId],
  };

  // 6. Export
  const outdir = path.resolve(project.workspacePath, 'packages/');
  console.log(`  outdir: ${outdir}\n`);

  console.log('Running exportMigrations...\n');
  await exportMigrations({
    project,
    options,
    dbInfo,
    author,
    schema_names,
    outdir,
    extensionName,
    extensionDesc: 'pgpm-installable agentic-db SQL module for the agentic-db personal database',
    metaExtensionName,
    metaExtensionDesc: 'agentic-db services metadata extension for API/site configuration',
    repoName,
    username,
  });

  console.log(`\nExport complete! Output: ${path.join(outdir, extensionName)}`);

  // Pool is already closed by exportMigrations internally
  process.exit(0);
}

main().catch((err) => {
  console.error('Export failed:', err);
  process.exit(1);
});
