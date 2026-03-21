---
name: agentic-db-export-pipeline
description: Full export pipeline for agentic-db — pgpm SQL export, GraphQL schema introspection, SDK generation, and CLI generation. Covers all 4 stages and the orchestration scripts.
---

# Export Pipeline

Export a provisioned agentic-db database into deployable artifacts: pgpm SQL modules, GraphQL schema, typed SDK, and CLI.

## Prerequisites

- Database provisioned (see `skills/database-lifecycle.md`)
- cnc server running on port 3000
- `eval "$(pgpm env)"` sourced
- pgpm >= 4.7.4 installed globally (`npm install -g pgpm@4.7.4`)

## Quick Start (Full Pipeline)

```bash
# Run everything: pgpm export → schema → SDK → CLI
pnpm run export:all
```

Or run individual stages:

```bash
pnpm run export:pgpm      # Stage 1: pgpm SQL modules
pnpm run export:schema     # Stage 2: GraphQL schema (SDL)
pnpm run generate:sdk      # Stage 3: Typed SDK
pnpm run generate:cli      # Stage 4: CLI commands
pnpm run generate:all      # Stages 2-4 only (skip pgpm)
```

## Stage 1: pgpm Export (`pnpm run export:pgpm`)

Exports the provisioned database into installable pgpm SQL modules.

**What it does:**
1. Connects to Postgres via `pgpm env` variables
2. Resolves the database ID (from `DATABASE_ID` env or latest non-constructive DB)
3. Fetches all schema names for the database
4. Calls `exportMigrations()` from `@pgpmjs/core` (pgpm 4.x)
5. Outputs to `packages/agentic-db/` and `packages/agentic-db-services/`

**Output:**
- `packages/agentic-db/` — Main pgpm module (~20,000+ SQL files)
  - `deploy/schemas/*/tables/*/` — Table definitions
  - `deploy/schemas/*/procedures/*/` — Functions/triggers
  - `deploy/schemas/*/policies/*/` — RLS policies
  - `sqitch.plan` — Migration ordering
- `packages/agentic-db-services/` — Services metadata (API/site config)

**Environment variables:**
- `PGDATABASE` — Database name (default: `constructive`)
- `DATABASE_ID` — Optional; auto-resolves if not set
- `EXTENSION_NAME` — pgpm module name (default: `agentic-db`)
- `META_EXTENSION_NAME` — Services module name (default: `agentic-db-services`)
- `AUTHOR` — Package author (default: `Dan Lynch <pyramation@gmail.com>`)

**Script:** `packages/export/src/run-export.ts`

### pgpm Deploy (Verification)

After exporting, verify the pgpm module is deployable:

```bash
# Create a temporary test database
createdb agentic_db_test

# Deploy the exported module
cd packages/agentic-db
pgpm deploy --database agentic_db_test

# Verify
psql -d agentic_db_test -c "SELECT count(*) FROM pg_tables WHERE schemaname LIKE 'agentic_db%'"

# Cleanup
dropdb agentic_db_test
```

## Stage 2: Schema Export (`pnpm run export:schema`)

Exports the live GraphQL schema via introspection to SDL files.

**What it does:**
1. Runs a full introspection query against the database's GraphQL endpoint
2. Converts introspection JSON to SDL (Schema Definition Language)
3. Writes the SDL to `sdk/schemas/generated/schema.graphql`

**Output:** `sdk/schemas/generated/schema.graphql` (~1,800 types, ~38,000 lines, ~1.3MB)

**Important:** Uses `http.request` (not `fetch`) because Node.js `fetch` cannot override the `Host` header when connecting to IPv6 addresses. The script connects to `[::1]:3000` with a `Host: app-public-<dbname>.localhost` header.

**Script:** `sdk/schemas/scripts/export.ts`

## Stage 3: SDK Generation (`pnpm run generate:sdk`)

Generates a typed TypeScript SDK from the exported GraphQL schema.

**What it does:**
1. Reads `sdk/schemas/generated/schema.graphql`
2. Runs `@constructive-io/graphql-codegen` with `orm: true` + `nodeHttpAdapter: true`
3. Outputs typed ORM models, queries, and mutations

**Output:** `sdk/sdk/generated/` — One file per table with typed CRUD operations

**Configuration:** `sdk/sdk/scripts/generate.ts`

```typescript
import { generate } from '@constructive-io/graphql-codegen';

await generate({
  schema: '../schemas/generated/schema.graphql',
  output: '../sdk/generated/agentic-db-sdk',
  orm: true,
  nodeHttpAdapter: true,
  docs: {
    readme: true,
    agents: true,
    skills: true,  // Always enable for agent-readable docs
  },
});
```

## Stage 4: CLI Generation (`pnpm run generate:cli`)

Generates CLI commands from the exported GraphQL schema.

**What it does:**
1. Reads `sdk/schemas/generated/schema.graphql`
2. Runs `@constructive-io/graphql-codegen` with `cli: true`
3. Outputs CLI command definitions

**Output:** `sdk/cli/generated/`

**Script:** `sdk/cli/scripts/generate.ts`

## Orchestration Scripts

Root `package.json` scripts:

| Script | Command | Description |
|--------|---------|-------------|
| `provision` | `pnpm --filter @agentic-db/provision run provision` | Run schema provisioning |
| `export:pgpm` | `pnpm --filter @agentic-db/export run export` | Stage 1: pgpm SQL export |
| `export:schema` | `pnpm --filter @agentic-db/schemas run export` | Stage 2: Schema introspection |
| `generate:sdk` | `pnpm --filter @agentic-db/sdk run generate` | Stage 3: SDK generation |
| `generate:cli` | `pnpm --filter @agentic-db/cli run generate` | Stage 4: CLI generation |
| `generate:all` | Stages 2-4 chained | Schema + SDK + CLI |
| `export:all` | Stages 1-4 chained | Full pipeline |

## Full Workflow (From Scratch)

```bash
# 1. Setup environment
eval "$(pgpm env)"

# 2. Create database
cd packages/provision && pnpm run create-db

# 3. Provision schemas
pnpm run provision

# 4. Export everything (back to repo root)
cd ../..
pnpm run export:all
```

## Troubleshooting

- **"Cannot find module '@pgpmjs/core'"**: pgpm < 4.x installed. Run `npm install -g pgpm@4.7.4`.
- **"No provisioned databases found"**: No database created yet. Run `pnpm run create-db` first.
- **Schema export returns empty/error**: cnc server not running or database name doesn't match the vhost.
- **"fetch failed" during schema export**: Node.js IPv6 issue. The script should use `http.request`, not `fetch`.
- **SDK generate fails "No generators enabled"**: Ensure `orm: true` or `cli: true` is set in the codegen config.
- **pgpm deploy fails**: Check that the `sqitch.plan` ordering is correct and all dependencies exist.

## Output Summary

After a full `export:all` run:

| Artifact | Location | Size |
|----------|----------|------|
| pgpm SQL module | `packages/agentic-db/` | ~20,000 files |
| Services module | `packages/agentic-db-services/` | ~200 files |
| GraphQL schema | `sdk/schemas/generated/schema.graphql` | ~1.3MB |
| SDK models | `sdk/sdk/generated/` | ~118 tables |
| CLI commands | `sdk/cli/generated/` | ~118 commands |
