---
name: agentic-db-export-flow
description: Full provision-to-export pipeline for agentic-db (pgpm export, GraphQL schema, SDK, CLI)
---

# Export Flow

Generate installable SQL modules, GraphQL schema, TypeScript SDK, and CLI from a provisioned agentic-db database.

## Prerequisites

- Docker running with `constructiveio/postgres-plus:18` image
- pgpm >= 4.7.4 installed globally (`npm install -g pgpm@4.7.4`)
- cnc server running on port 3000 (public mode)
- Database provisioned via `pnpm run provision`

## Environment Setup

```bash
# Start Docker + pgpm
pgpm docker start --image docker.io/constructiveio/postgres-plus:18 --recreate
eval "$(pgpm env)"
pgpm admin-users bootstrap --yes
pgpm admin-users add --test --yes

# Deploy constructive-db (from constructive-db repo)
cd /path/to/constructive-db && pgpm deploy

# Start cnc server (from constructive repo)
cd /path/to/constructive/graphql/server
PGDATABASE=postgres PORT=3000 npx ts-node src/run.ts

# Create database + provision (from agentic-db repo)
cd /path/to/agentic-db
pnpm --filter @agentic-db/provision run create-db
pnpm run provision
```

## Export Pipeline

### Individual Steps

```bash
# 1. pgpm SQL module export (20k+ files to packages/agentic-db/)
pnpm run export:pgpm

# 2. GraphQL schema export via introspection (writes sdk/schemas/agentic-db.graphql)
#    Requires DATABASE_NAME env var matching the provisioned database name
DATABASE_NAME=agentic-db-<timestamp> pnpm run export:schema

# 3. SDK generation (reads .graphql, writes sdk/sdk/src/generated/)
pnpm run generate:sdk

# 4. CLI generation (reads .graphql, writes sdk/cli/generated/)
pnpm run generate:cli
```

### Orchestration Scripts

```bash
# Schema export + SDK + CLI (steps 2-4)
pnpm run generate:all

# Full pipeline: pgpm export + schema + SDK + CLI (steps 1-4)
pnpm run export:all
```

## Key Details

- **pgpm export** (`packages/export/src/run-export.ts`): Resolves the database_id from `metaschema_public.database`, fetches schema names, calls `exportMigrations()` from `@pgpmjs/core` (resolved from global pgpm install).
- **Schema export** (`sdk/schemas/scripts/export.ts`): Uses `http.request` with IPv6 `::1` and explicit `Host` header to introspect the GraphQL API. Converts introspection result to SDL without needing the `graphql` package.
- **SDK generation** (`sdk/sdk/scripts/generate.ts`): Uses `@constructive-io/graphql-codegen` with `orm: true` to generate TypeScript ORM models from the `.graphql` schema file.
- **CLI generation** (`sdk/cli/src/generate.ts`): Same codegen library with `cli: { toolName: 'agentic-db' }` to generate CLI commands.

## Troubleshooting

- **"MODULE_NOT_FOUND @pgpmjs/core"**: pgpm is too old. Install pgpm >= 4.7.4: `npm install -g pgpm@4.7.4`
- **Schema export returns HTML/"API not found"**: The `DATABASE_NAME` env var doesn't match the provisioned database name. Check with: `psql -c "SELECT name FROM metaschema_public.database"`
- **"fetch failed" in schema export**: Node.js `fetch` can't override Host headers on IPv6. The script uses `http.request` instead — if you get this error, you may be running an old version of the export script.
- **"No generators enabled"**: This was the old schema export approach. The current version uses direct introspection, not `@constructive-io/graphql-codegen`.
- **"grafast" duplicate module warning**: Cosmetic warning from two versions of `graphql` (16.13.0 vs 16.13.1) in the dependency tree. Does not affect output.
- **cnc server on IPv4 only**: Set `CNC_HOST=127.0.0.1` if your cnc server doesn't bind to IPv6.

## Output Summary (typical)

| Step | Output | Size |
|---|---|---|
| pgpm export | `packages/agentic-db/` + `packages/agentic-db-services/` | ~20,500 files |
| Schema export | `sdk/schemas/agentic-db.graphql` | ~1.3MB, ~38k lines, ~1800 types |
| SDK generation | `sdk/sdk/src/generated/` | ~118 table models |
| CLI generation | `sdk/cli/generated/` | ~118 CLI commands |
