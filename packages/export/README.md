# @agentic-db/export

pgpm export wrapper for agent-db schema. Exports the provisioned agent-db database as a pgpm-installable SQL module.

## Prerequisites

- `pgpm` installed globally (`npm install -g pgpm`)
- A provisioned agent-db database running locally (via `pnpm run provision` in `packages/provision`)
- PostgreSQL connection available (pgpm reads from `PGHOST`, `PGPORT`, `PGUSER`, `PGPASSWORD` env vars, or uses `pgpm env`)

## Usage

### Interactive export (prompts for database selection)

```bash
pnpm run export:interactive
```

### Non-interactive export

```bash
pnpm run export
```

This runs `pgpm export` with:
- `--extensionName agent-db` — names the output module `agent-db`
- `--metaExtensionName agent-db-services` — names the services module `agent-db-services`

### How it works

1. `pgpm export` connects directly to the PostgreSQL database
2. Reads metadata from `collections_public.database`, `collections_public.schema`
3. Reads migration history from `db_migrate.sql_actions`
4. Uses `makeReplacer()` to auto-rename schemas (e.g. `agent-db-<timestamp>-public` -> `agent_db_public`)
5. Outputs a pgpm module with `deploy/`, `revert/`, `verify/`, `.control`, `pgpm.plan`

### Output

The exported module lands in the pgpm workspace `packages/` directory (configured by `pgpm.json` at repo root). You can then:

```bash
# Install the module into another database
pgpm install agent-db

# Or publish it
pgpm package
```

### Environment

Make sure pgpm env vars are set:

```bash
eval "$(pgpm env)"
```

Or set them manually:

```bash
export PGHOST=localhost
export PGPORT=5432
export PGUSER=postgres
export PGPASSWORD=postgres
```
