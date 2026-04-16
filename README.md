# agentic-db

<p align="center" width="100%">
  <img height="250" src="https://raw.githubusercontent.com/constructive-io/constructive/refs/heads/main/assets/outline-logo.svg" />
</p>

<p align="center" width="100%">
  <a href="https://github.com/constructive-io/agentic-db/actions/workflows/integration-test.yml">
    <img height="20" src="https://github.com/constructive-io/agentic-db/actions/workflows/integration-test.yml/badge.svg" />
  </a>
</p>

A personal CRM and knowledge base built on [pgpm](https://github.com/constructive-io/constructive) and the [Constructive](https://constructive.io) platform. Vector search, full-text search, BM25 ranking, trigram fuzzy matching, PostGIS spatial queries, row-level security, and auto-embedding triggers -- all inside PostgreSQL.

## Quick Start

```bash
# Install pgpm
npm install -g pgpm

# Start PostgreSQL
pgpm docker start --image docker.io/constructiveio/postgres-plus:18

# Load env vars and bootstrap roles
eval "$(pgpm env)"
pgpm admin-users bootstrap --yes

# Deploy the database
pgpm deploy --createdb --database agentic-db --yes --recursive --package agentic-db
```

For local development with Ollama (embeddings):

```bash
git clone https://github.com/constructive-io/agentic-db.git
cd agentic-db
pnpm install
docker compose up -d
eval "$(pgpm env)"
pgpm admin-users bootstrap --yes
pgpm deploy --createdb --database agentic-db --yes --recursive --package agentic-db
```

See the [`agentic-db` package README](packages/agentic-db) for the full deployment guide, schema details, and search capabilities.

## Packages

### Published

| Package | npm | Description |
|---------|-----|-------------|
| [`agentic-db`](packages/agentic-db) | `agentic-db` | pgpm SQL module -- the core database schema with 90+ tables, RLS, and search indexes |
| [`@agentic-db/services`](packages/agentic-db-services) | `@agentic-db/services` | pgpm SQL module -- API endpoint and domain routing metadata |
| [`@agentic-db/sdk`](sdk/sdk) | `@agentic-db/sdk` | Type-safe Prisma-like ORM client generated from the GraphQL schema |
| [`@agentic-db/cli`](sdk/cli) | `@agentic-db/cli` | CLI tool for CRUD, search, and admin operations |

### Private (development only)

| Package | Description |
|---------|-------------|
| [`@agentic-db/provision`](packages/provision) | SDK-based blueprint provisioning (tables, relations, search, RLS) |
| [`@agentic-db/export`](packages/export) | pgpm export wrapper (extracts provisioned schema as SQL modules) |
| [`@agentic-db/rag`](packages/rag) | RAG CLI tools (hybrid search, batch embedding, multi-pass Q&A) |
| [`@agentic-db/worker`](packages/worker) | Background worker for auto-generating embeddings via Ollama |
| [`@agentic-db/schemas`](sdk/schemas) | GraphQL schema files (`.graphql`) used by codegen |
| [`@agentic-db/integration-tests`](packages/integration-tests) | Integration test suite (ORM, embeddings, RAG, unified search) |
| [`@agentic-db/cli-e2e-tests`](packages/cli-e2e-tests) | End-to-end CLI test suite |

## Prerequisites

- Node.js 20+
- pnpm
- Docker (with Compose V2)
- PostgreSQL client tools (`psql`)
- pgpm (`npm install -g pgpm`)

## Docker Setup

The `docker-compose.yml` starts PostgreSQL 18 and Ollama with settings tuned for vector workloads:

```bash
# Start all services
docker compose up -d

# GPU-accelerated Ollama (NVIDIA)
docker compose --profile gpu up -d

# Stop (data preserved in volumes)
docker compose down

# Stop and delete all data
docker compose down -v
```

| Setting | Value | Purpose |
|---------|-------|---------|
| `shm_size` | 2GB | Prevents OOM during bulk COPY of vector data |
| `shared_buffers` | 512MB | More RAM for caching table/index pages |
| `work_mem` | 64MB | Per-sort/hash memory for vector operations |
| `maintenance_work_mem` | 512MB | Used by pg_restore, VACUUM, CREATE INDEX |
| `max_wal_size` | 2GB | Reduces checkpoint frequency during bulk loads |

## Schema Development Workflow

The schema is developed using the Constructive SDK provisioning pipeline:

1. **Edit blueprints** in [`packages/provision/src/schemas/`](packages/provision/src/schemas) -- define tables, fields, relations, search nodes
2. **Provision** -- `cd packages/provision && pnpm run provision` applies blueprints against the platform DB
3. **Export** -- `cd packages/export && pnpm run export` extracts the schema as pgpm SQL modules
4. **Deploy** -- `pgpm deploy --recursive --package agentic-db` installs into any Postgres database
5. **Regenerate codegen** -- `pnpm run generate:all` updates the SDK and CLI from the live schema

## Auto-Embedding Pipeline

Postgres triggers automatically enqueue embedding jobs when records are created or updated. The background worker processes them via Ollama:

```bash
# Start the embedding worker
cd packages/worker
pnpm run start
```

The worker generates embeddings for all tables with `SearchUnified` or `SearchVector` nodes. Contacts and notes also get chunked embeddings for long-document search.

## Testing

```bash
# Run all tests (from repo root)
pnpm test

# Run a specific test suite
cd packages/agentic-db && pnpm test        # pgpm deploy + schema tests
cd packages/integration-tests && pnpm test  # ORM, embeddings, RAG, unified search
cd packages/cli-e2e-tests && pnpm test      # CLI end-to-end
```

## Credits

Built by the [Constructive](https://constructive.io) team -- creators of modular Postgres tooling for secure, composable backends. Contribute on [GitHub](https://github.com/constructive-io).

## Disclaimer

AS DESCRIBED IN THE LICENSES, THE SOFTWARE IS PROVIDED "AS IS", AT YOUR OWN RISK, AND WITHOUT WARRANTIES OF ANY KIND.

No developer or entity involved in creating this software will be liable for any claims or damages whatsoever associated with your use, inability to use, or your interaction with other users of the code, including any direct, indirect, incidental, special, exemplary, punitive or consequential damages, or loss of profits, cryptocurrencies, tokens, or anything else of value.
