---
name: agentic-db-database-lifecycle
description: Create, provision, and manage agentic-db databases via the Constructive SDK. Covers create-db, provision, database-level settings, and verification.
---

# Database Lifecycle

Create and provision an agentic-db database from scratch. Assumes the environment is already set up (see `skills/setup.md`).

## Prerequisites

- Docker + Postgres running (`pgpm docker start`)
- constructive-db deployed (`pgpm deploy` in constructive-db repo)
- cnc server running on port 3000 (public) and 3001 (private)
- `eval "$(pgpm env)"` sourced in your shell
- `pnpm install` completed in agentic-db repo

## Step 1: Create Database

```bash
cd packages/provision
pnpm run create-db
```

This script:
1. Signs up a new admin user at `auth.localhost:3000/graphql`
2. Provisions a database with `modules: ['all']` (all built-in schemas)
3. Writes `DATABASE_ID`, `DATABASE_NAME`, `ACCESS_TOKEN` to the root `.env`

The database name follows the pattern `agentic-db-<timestamp>`.

### What `modules: ['all']` includes

Built-in schemas auto-provisioned: users_module, auth_module, rls_module, services_module, etc. These provide authentication, RLS, API routing, and all platform infrastructure.

## Step 2: Provision Schemas

```bash
cd packages/provision
pnpm run provision
```

This runs the orchestrator (`provision.ts`) which:

1. **Sets database-level settings** via `ALTER DATABASE SET`:
   - `metaschema.deterministic_ids = 'true'` — stable UUIDs during provision
   - `metaschema.uuid_seed = 'agentic-db'` — deterministic seed
   - `constructive.simple_schema_names = 'true'` — clean schema names (no hash suffixes)
   - `constructive.schema_use_underscores = 'true'` — underscores instead of hyphens

2. **Runs all 7 schema modules** sequentially:
   - CRM (contacts, companies, deals, events, venues, pipelines, tags, links)
   - Agent Core (agents, tasks, memories, skills, tools, workflows, decisions)
   - Agent Runtime (sessions, conversations, messages, actions, execution_logs)
   - Projects (projects, milestones, issues, pull_requests, code_reviews, repositories)
   - Codebase (files, commits, branches, code_snippets, documentation)
   - Life OS (goals, habits, journal_entries, bookmarks, notes, health_metrics)
   - Autonomy (plans, strategies, evaluations, resource_allocations, risk_assessments)

3. **Runs cross-relations** module (cross-schema M:N junctions and BelongsTo FKs)

4. **Resets provision-only settings** (deterministic IDs off, schema naming preserved)

### Blueprint System

Each schema module exports a `BlueprintDefinition` with 4 phases:

```typescript
const definition: BlueprintDefinition = {
  tables: [...],           // Phase 1: Create tables (fields, nodes, policies, grants)
  relations: [...],        // Phase 2: Create relations (HasMany, BelongsTo, M:N)
  indexes: [...],          // Phase 3: Create indexes (HNSW, BM25, B-tree, GIN, GIST)
  full_text_searches: [...] // Phase 4: TSVector configurations
};

export default () => provisionBlueprint(definition, 'CRM Schema');
```

See `skills/blueprint-provision.md` for detailed blueprint authoring guide.

## Step 3: Verify

After provision, verify the database is working:

```bash
# Count tables (should be ~174 including platform + app tables)
psql -c "SELECT count(*) FROM metaschema_public.secure_table_provision WHERE database_id = '<DATABASE_ID>'"

# Count indexes (should be ~717)
psql -c "SELECT count(*) FROM metaschema_public.index WHERE database_id = '<DATABASE_ID>'"

# Check GraphQL API responds
curl -s "http://app-public-agentic-db-<timestamp>.localhost:3000/graphql" \
  -H "Content-Type: application/json" \
  -d '{"query":"{ __typename }"}' | head -20
```

## Full End-to-End Command Sequence

```bash
# 1. Environment
eval "$(pgpm env)"

# 2. Create database
cd /path/to/agentic-db/packages/provision
pnpm run create-db

# 3. Provision schemas
pnpm run provision

# 4. Verify
psql -c "SELECT count(*) FROM metaschema_public.secure_table_provision"
```

## Troubleshooting

- **"ACCESS_TOKEN is required"**: `.env` file missing or `create-db` didn't run. Check the root `.env`.
- **"already exists" errors during provision**: The database was already provisioned. Create a new one or drop the old schemas.
- **Provision hangs on a table**: Check that the cnc server is running on port 3000 and accepting connections.
- **"relation metaschema_public.database does not exist"**: constructive-db not deployed. Run `pgpm deploy` in constructive-db.
- **Wrong schema names (hashes in names)**: `constructive.simple_schema_names` wasn't set. The provision script sets this automatically.

## Next Steps

After provisioning, proceed to export: `skills/export-pipeline.md`
