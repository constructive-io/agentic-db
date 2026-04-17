---
name: agentic-db-setup
description: Complete setup guide for agentic-db development environment — Docker, pgpm, constructive-db, cnc server, and workspace dependencies.
---

# Environment Setup

Set up the full agentic-db development environment from scratch.

## Prerequisites

- Node.js >= 22
- Docker running
- pnpm installed (`npm install -g pnpm`)
- Three repos cloned:
  - `constructive-io/constructive-db` — database engine + pgpm modules
  - `constructive-io/constructive` — GraphQL server (cnc)
  - `constructive-io/agentic-db` — this repo

## Step 1: Install pgpm

```bash
npm install -g pgpm@4.7.4
```

Verify: `pgpm --version` should output `4.7.4` or higher.

**Important:** pgpm < 4.x will NOT work for export — it lacks `@pgpmjs/core`.

## Step 2: Start Docker + Postgres

```bash
# Start Postgres with the constructive image
pgpm docker start --image docker.io/constructiveio/postgres-plus:18 --recreate

# Set environment variables (PGUSER, PGHOST, PGPORT, etc.)
eval "$(pgpm env)"

# Bootstrap admin users
pgpm admin-users bootstrap --yes
pgpm admin-users add --test --yes
```

Verify: `psql -c "SELECT 1"` should succeed.

## Step 3: Deploy constructive-db

```bash
cd /path/to/constructive-db
pnpm install
pgpm deploy
```

This deploys all pgpm modules (metaschema, services, etc.) to the Postgres database.

Verify: `psql -c "SELECT count(*) FROM metaschema_public.database"` should return at least 1.

## Step 4: Start cnc Server

The cnc server is in the `constructive` monorepo at `graphql/server/`.

```bash
cd /path/to/constructive/graphql/server

# Public API server (port 3000)
eval "$(pgpm env)" && PGDATABASE=postgres PORT=3000 npx ts-node src/run.ts

# Private API server (port 3001) — in a separate terminal
eval "$(pgpm env)" && PGDATABASE=postgres PORT=3001 API_IS_PUBLIC=false npx ts-node src/run.ts
```

Verify: `curl -s http://localhost:3000/ | head -5` should return HTML (the cnc landing page).

## Step 5: Install agentic-db Dependencies

```bash
cd /path/to/agentic-db
pnpm install
```

## Verification Checklist

- [ ] `pgpm --version` >= 4.7.4
- [ ] `docker ps` shows a running postgres container
- [ ] `psql -c "SELECT 1"` succeeds
- [ ] `psql -c "SELECT count(*) FROM metaschema_public.database"` returns >= 1
- [ ] cnc server responds on port 3000
- [ ] `pnpm install` completed without errors in agentic-db

## Troubleshooting

- **"pgpm: command not found"**: Run `npm install -g pgpm@4.7.4`
- **Docker container won't start**: Run `docker rm -f $(docker ps -aq)` then retry `pgpm docker start`
- **"relation metaschema_public.database does not exist"**: `pgpm deploy` was not run in constructive-db
- **cnc server fails with "EADDRINUSE"**: Kill the existing process on that port
- **pnpm install fails**: Delete `node_modules` and `pnpm-lock.yaml`, then retry

## Next Steps

1. Create a database: `skills/database-lifecycle.md`
2. Provision tables: `skills/blueprint-provision.md`
3. Export + generate: `skills/export-pipeline.md`
