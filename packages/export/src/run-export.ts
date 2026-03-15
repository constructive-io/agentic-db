/**
 * Non-interactive pgpm export script for agent-db.
 *
 * This script bypasses pgpm's interactive CLI prompts and calls
 * exportMigrations directly from @launchql/core. It reads from
 * collections_public.database and collections_public.schema
 * (same views that `pgpm export` uses).
 *
 * Usage:
 *   eval "$(pgpm env)" && PGDATABASE=constructive tsx src/run-export.ts
 *
 * Environment:
 *   DATABASE_ID  – UUID of the provisioned database (optional; uses latest if omitted)
 *   PGDATABASE   – Postgres database name (default: constructive)
 */

// pgpm is installed globally; resolve its modules from there
const pgpmRoot = require('child_process')
  .execSync('npm root -g', { encoding: 'utf-8' })
  .trim();

// ---------------------------------------------------------------------------
// pg-ast compatibility shim
//
// pgpm 0.2.6 ships csv-to-pg which calls PascalCase functions on pg-ast
// (e.g. ast.ResTarget(), ast.FuncCall(), ast.String(), ast.A_Const(), etc.)
// The new pg-ast version changed to camelCase under ast.nodes/ast.ast but
// those functions don't preserve all properties correctly. The old API
// simply returned { NodeName: { ...props } }. This shim adds PascalCase
// wrapper functions that produce the exact AST shape the deparser expects.
// ---------------------------------------------------------------------------
const pgAstPath = require.resolve('pg-ast', {
  paths: [`${pgpmRoot}/pgpm/node_modules`],
});
const pgAst = require(pgAstPath);

// Simple wrapper: ast.NodeName(props) -> { NodeName: { ...props } }
const makeWrapper = (name: string) => (props?: any) => ({ [name]: props || {} });

const wrappers: Record<string, string> = {
  ResTarget: 'ResTarget',
  FuncCall: 'FuncCall',
  String: 'String',
  Float: 'Float',
  Integer: 'Integer',
  A_Const: 'A_Const',
  ColumnRef: 'ColumnRef',
  RangeVar: 'RangeVar',
  SelectStmt: 'SelectStmt',
  TypeCast: 'TypeCast',
  TypeName: 'TypeName',
  Null: 'Null',
  A_Star: 'A_Star',
};

for (const [fnName, nodeName] of Object.entries(wrappers)) {
  if (!pgAst[fnName]) {
    pgAst[fnName] = makeWrapper(nodeName);
  }
}

// Update the require.cache so csv-to-pg picks up the patched module
if (require.cache[pgAstPath]) {
  require.cache[pgAstPath]!.exports = pgAst;
}

// Now safe to load csv-to-pg and @launchql/core
// eslint-disable-next-line @typescript-eslint/no-var-requires
const { LaunchQLPackage, exportMigrations } = require(`${pgpmRoot}/pgpm/node_modules/@launchql/core`);
// eslint-disable-next-line @typescript-eslint/no-var-requires
const { getEnvOptions } = require(`${pgpmRoot}/pgpm/node_modules/@launchql/env`);
// eslint-disable-next-line @typescript-eslint/no-var-requires
const { getPgPool } = require(`${pgpmRoot}/pgpm/node_modules/pg-cache`);

const path = require('path');

async function main() {
  const workspaceRoot = path.resolve(__dirname, '../../..');
  const extensionName = process.env.EXTENSION_NAME || 'agent-db';
  const metaExtensionName = process.env.META_EXTENSION_NAME || 'agent-db-services';
  const author = process.env.AUTHOR || 'Dan Lynch <pyramation@gmail.com>';
  const dbname = process.env.PGDATABASE || 'constructive';

  console.log(`\npgpm export (non-interactive)\n`);
  console.log(`  workspace: ${workspaceRoot}`);
  console.log(`  database:  ${dbname}`);
  console.log(`  extension: ${extensionName}`);
  console.log(`  author:    ${author}`);

  // 1. Initialize pgpm workspace
  const project = new LaunchQLPackage(workspaceRoot);
  project.ensureWorkspace();
  project.resetCwd(project.workspacePath);

  const options = getEnvOptions();

  // 2. Connect to the database
  const db = await getPgPool({ database: dbname });

  // 3. Get the database ID (either from env or latest provisioned)
  let databaseId = process.env.DATABASE_ID;
  if (!databaseId) {
    const result = await db.query(
      `SELECT id, name FROM collections_public.database WHERE name != 'constructive' ORDER BY name DESC LIMIT 1`
    );
    if (result.rows.length === 0) {
      console.error('No provisioned databases found in collections_public.database');
      process.exit(1);
    }
    databaseId = result.rows[0].id;
    console.log(`  resolved database: ${result.rows[0].name} (${databaseId})`);
  } else {
    console.log(`  database_id: ${databaseId}`);
  }

  // 4. Get all schema names for this database
  const schemasResult = await db.query(
    `SELECT schema_name FROM collections_public.schema WHERE database_id = $1 ORDER BY schema_name`,
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
    metaExtensionName,
  });

  console.log(`\nExport complete! Output: ${path.join(outdir, extensionName)}`);

  // Pool is already closed by exportMigrations internally
  process.exit(0);
}

main().catch((err) => {
  console.error('Export failed:', err);
  process.exit(1);
});
