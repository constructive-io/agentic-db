# agentic-db

<p align="center" width="100%">
  <img height="250" src="https://raw.githubusercontent.com/constructive-io/constructive/refs/heads/main/assets/outline-logo.svg" />
</p>

<p align="center" width="100%">
  <a href="https://github.com/constructive-io/agentic-db/actions/workflows/integration-test.yml">
    <img height="20" src="https://github.com/constructive-io/agentic-db/actions/workflows/integration-test.yml/badge.svg" />
  </a>
  <a href="https://github.com/constructive-io/agentic-db/blob/main/LICENSE"><img height="20" src="https://img.shields.io/badge/license-MIT-blue.svg"/></a>
  <a href="https://www.npmjs.com/package/agentic-db"><img height="20" src="https://img.shields.io/npm/v/agentic-db"/></a>
</p>

A personal CRM and knowledge base, built entirely in PostgreSQL using [pgpm](https://pgpm.io) and the [Constructive](https://constructive.io) platform. This is a pgpm-installable SQL module that provisions a complete schema with vector search, full-text search, BM25 ranking, trigram fuzzy matching, PostGIS spatial queries, and auto-embedding triggers -- all inside Postgres.

## What's Inside

| Domain | Tables | Highlights |
|--------|--------|------------|
| **CRM** | contacts, companies, deals, events, venues, notes, interactions, touchpoints, tags | Unified search (pgvector + BM25 + tsvector + trigram), PostGIS spatial, chunk embeddings on contacts & notes |
| **Agent** | agents, tasks, skills, agent_tasks, agent_skills | AI agent task management with M:N relations |
| **Life OS** | goals, habits, activity_logs, memories, trips, places | Personal life tracking with spatial search on places |
| **Projects** | projects, expenses | Project and expense tracking |
| **Email & Calendar** | email_accounts, email_messages, email_threads, calendars, calendar_events | Email and calendar integration |
| **Runtime** | conversations, messages, tool_calls | LLM conversation history |
| **Autonomy** | policies, audit_logs | Policy enforcement and audit trail |

Plus junction tables for M:N relations (contact_notes, contact_companies, contact_events, etc.), image galleries, and cross-domain linking.

## Quick Start

### Prerequisites

- PostgreSQL 18+ (via [constructiveio/postgres-plus](https://hub.docker.com/r/constructiveio/postgres-plus))
- [pgpm](https://pgpm.io) (`npm install -g pgpm`)
- Node.js 20+, pnpm

### Install and Deploy

```bash
# 1. Start PostgreSQL
pgpm docker start

# 2. Load connection env vars
eval "$(pgpm env)"

# 3. Bootstrap required roles (authenticated, administrator, etc.)
pgpm admin-users bootstrap --yes

# 4. Deploy agentic-db into a fresh database
pgpm deploy --createdb --database agentic-db --yes --package agentic-db
```

That's it. You now have a fully provisioned database with all tables, search indexes, and embedding triggers.

`pgpm docker start` runs `constructiveio/postgres-plus:18` with 2 GB shared memory by default. Use `--image`, `--port`, `--shm-size` to customize.

### With Ollama (for embeddings)

The embedding triggers require an LLM to generate vectors. If you don't already have one running:

```bash
# Start PostgreSQL + Ollama (CPU)
pgpm docker start --ollama

# Or with NVIDIA GPU acceleration
pgpm docker start --ollama --gpu
```

Already have Ollama (or another LLM) running? Just use `pgpm docker start` and point `OLLAMA_URL` at your existing instance.

Alternatively, the repo includes a `docker-compose.yml` with tuned Postgres settings and Ollama:

```bash
docker compose up -d                    # CPU
docker compose --profile gpu up -d      # NVIDIA GPU
```

### Clean Rebuild

```bash
pgpm docker start --recreate
eval "$(pgpm env)"
pgpm admin-users bootstrap --yes
pgpm deploy --createdb --database agentic-db --yes --package agentic-db
```

## How pgpm Works

[pgpm](https://pgpm.io) (PostgreSQL Package Manager) treats SQL schemas like versioned packages -- similar to how npm manages JavaScript modules. Each module has:

- A `.control` file declaring metadata and dependencies
- A `pgpm.plan` file listing migrations in order
- `deploy/`, `revert/`, `verify/` directories with SQL files

When you run `pgpm deploy`, it resolves the dependency tree (this module requires 20+ extensions including pgvector, PostGIS, pg_textsearch, and the Constructive metaschema), applies migrations in order, and tracks what's been deployed.

### Module Dependencies

```
agentic-db
  requires: plpgsql, uuid-ossp, citext, pgcrypto, btree_gin, btree_gist,
            pg_textsearch, pg_trgm, postgis, hstore, vector,
            metaschema-schema, pgpm-inflection, pgpm-uuid, pgpm-utils,
            pgpm-database-jobs, pgpm-jwt-claims, pgpm-stamps,
            pgpm-base32, pgpm-totp, pgpm-types

agentic-db-services
  requires: plpgsql, metaschema-schema, metaschema-modules, services
```

## Search Capabilities

Every table with embeddings supports up to four search strategies, exposed through a unified GraphQL API:

| Strategy | Engine | Use Case |
|----------|--------|----------|
| **Vector** | pgvector (HNSW) | Semantic similarity search via embeddings |
| **BM25** | pg_textsearch | Statistical relevance ranking |
| **Full-text** | tsvector + GIN | Classic Postgres full-text search with weighted fields |
| **Trigram** | pg_trgm | Fuzzy matching for typos and partial strings |
| **Spatial** | PostGIS | Geographic proximity queries on contacts, events, venues, places |

Contacts and notes also have **chunk tables** (`contacts_chunks`, `notes_chunks`) for embedding long documents as multiple vectors with automatic chunking.

## Using the SDK

Once deployed, query the database through the generated TypeScript SDK:

```typescript
import { createClient } from '@agentic-db/sdk';

const db = createClient({
  endpoint: 'http://agentic.localhost:3000/graphql',
  headers: { Authorization: `Bearer ${token}` },
});

// CRUD
const contacts = await db.contact.findMany({ first: 10 });
const contact = await db.contact.create({ input: { firstName: 'Alice', headline: 'Engineer' } });

// Vector search
const results = await db.contact.findMany({
  condition: { vectorEmbedding: { distance_lt: 0.5, vector: embedding } },
});

// Unified search (vector + BM25 + FTS + trigram combined)
const unified = await db.contact.findMany({
  condition: { searchScore: { score_gt: 0 } },
});
```

See [`@agentic-db/sdk`](../../sdk/sdk) for the full API reference, and [`@agentic-db/cli`](../../sdk/cli) for the CLI tool.

## Testing

```bash
# Run tests for this module
pnpm test

# Watch mode
pnpm test:watch
```

Tests use `pgsql-test` and `graphile-test` to spin up ephemeral databases, deploy the schema, and run queries against it.

## Credits

Built by the [Constructive](https://constructive.io) team -- creators of modular Postgres tooling for secure, composable backends. Contribute on [GitHub](https://github.com/constructive-io).

## Disclaimer

AS DESCRIBED IN THE LICENSES, THE SOFTWARE IS PROVIDED "AS IS", AT YOUR OWN RISK, AND WITHOUT WARRANTIES OF ANY KIND.

No developer or entity involved in creating this software will be liable for any claims or damages whatsoever associated with your use, inability to use, or your interaction with other users of the code, including any direct, indirect, incidental, special, exemplary, punitive or consequential damages, or loss of profits, cryptocurrencies, tokens, or anything else of value.
