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
const fs = require('fs');

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

  // ---------------------------------------------------------------------------
  // Fix boilerplate template files
  //
  // pgpm 0.2.6's preparePackage calls project.initModule() with lowercase keys
  // (name, description, author) but the compiled templates expect UPPERCASE
  // vars (MODULENAME, MODULEDESC, USERFULLNAME, etc.). This results in
  // "undefined" in README.md, package.json, and .questions.json.
  //
  // We regenerate these files using the correct values and the latest
  // boilerplate format from constructive-io/pgpm-boilerplates.
  // ---------------------------------------------------------------------------
  const authorMatch = author.match(/^(.+?)\s*<(.+?)>$/);
  const fullName = authorMatch ? authorMatch[1] : author;
  const email = authorMatch ? authorMatch[2] : '';
  const username = process.env.GITHUB_USERNAME || 'pyramation-studio';
  const repoName = process.env.REPO_NAME || 'agent-os';
  const access = process.env.ACCESS || 'public';
  const license = process.env.LICENSE || 'SEE LICENSE IN LICENSE';

  for (const modName of [extensionName, metaExtensionName]) {
    const modDir = path.join(outdir, modName);
    if (!fs.existsSync(modDir)) continue;

    const modDesc = modName === extensionName
      ? 'pgpm-installable agent-db SQL module for the Agent OS personal database'
      : 'agent-db services metadata extension for API/site configuration';

    console.log(`Fixing boilerplate files for ${modName}...`);

    // README.md — use latest boilerplate format from pgpm-boilerplates
    fs.writeFileSync(path.join(modDir, 'README.md'), `# ${modName}

<p align="center" width="100%">
  <img height="250" src="https://raw.githubusercontent.com/constructive-io/constructive/refs/heads/main/assets/outline-logo.svg" />
</p>

<p align="center" width="100%">
  <a href="https://github.com/${username}/${repoName}/actions/workflows/ci.yml">
    <img height="20" src="https://github.com/${username}/${repoName}/actions/workflows/ci.yml/badge.svg" />
  </a>
   <a href="https://www.npmjs.com/package/${modName}"><img height="20" src="https://img.shields.io/github/package-json/v/${username}/${repoName}?filename=packages%2F${modName}%2Fpackage.json"/></a>
</p>

## Developing

This module was generated with \`pgpm init\`. For a complete guide on creating and testing database modules, see [Creating Your First Module](https://constructive.io/learn/modular-postgres/creating-first-module).

\`\`\`sh
# Install dependencies
pnpm install

# Run tests
pnpm test

# Run tests in watch mode
pnpm test:watch

# Deploy to a database
pgpm deploy --database your_db --createdb --yes
\`\`\`

## Credits

**Built by the [Constructive](https://constructive.io) team — creators of modular Postgres tooling for secure, composable backends. If you like our work, contribute on [GitHub](https://github.com/constructive-io).**

## Disclaimer

AS DESCRIBED IN THE LICENSES, THE SOFTWARE IS PROVIDED "AS IS", AT YOUR OWN RISK, AND WITHOUT WARRANTIES OF ANY KIND.

No developer or entity involved in creating this software will be liable for any claims or damages whatsoever associated with your use, inability to use, or your interaction with other users of the code, including any direct, indirect, incidental, special, exemplary, punitive or consequential damages, or loss of profits, cryptocurrencies, tokens, or anything else of value.
`);

    // package.json — use latest boilerplate format
    const pkgPath = path.join(modDir, 'package.json');
    const existingPkg = fs.existsSync(pkgPath)
      ? JSON.parse(fs.readFileSync(pkgPath, 'utf-8'))
      : {};
    const pkg = {
      name: modName,
      version: existingPkg.version || '0.0.1',
      author: `${fullName} <${email}>`,
      description: modDesc,
      homepage: `https://github.com/${username}/${repoName}`,
      license,
      publishConfig: {
        access,
        directory: 'dist',
      },
      repository: {
        type: 'git',
        url: `https://github.com/${username}/${repoName}`,
      },
      bugs: {
        url: `https://github.com/${username}/${repoName}/issues`,
      },
      scripts: existingPkg.scripts || {
        lint: 'eslint . --fix',
        test: 'jest',
        'test:watch': 'jest --watchAll',
      },
      keywords: existingPkg.keywords || [],
      devDependencies: existingPkg.devDependencies || {
        'pgsql-test': '^2.18.15',
        'makage': '^0.1.10',
      },
    };
    fs.writeFileSync(pkgPath, JSON.stringify(pkg, null, 2) + '\n');

    // .questions.json — record the template variable values
    const questions = [
      { name: fullName, message: 'Enter author full name', required: true },
      { name: email, message: 'Enter author email', required: true },
      { name: modName, message: 'Enter the module name', required: true },
      { name: modDesc, message: 'Enter the module description', required: true },
      { name: repoName, message: 'Enter the repository name', required: true },
      { name: username, message: 'Enter your github username', required: true },
      {
        name: access,
        message: 'Module access?',
        choices: ['public', 'restricted'],
        type: 'list',
        required: true,
      },
    ];
    fs.writeFileSync(
      path.join(modDir, '.questions.json'),
      JSON.stringify(questions, null, 2) + '\n'
    );
  }

  console.log('\nBoilerplate files fixed.');

  // Pool is already closed by exportMigrations internally
  process.exit(0);
}

main().catch((err) => {
  console.error('Export failed:', err);
  process.exit(1);
});
