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

A personal CRM and knowledge base built on [pgpm](https://pgpm.io) and the [Constructive](https://constructive.io) platform. Vector search, full-text search, BM25 ranking, trigram fuzzy matching, PostGIS spatial queries, and auto-embedding triggers -- all inside PostgreSQL.

## Quick Start

```bash
# Install pgpm
npm install -g pgpm

# Create a workspace and install agentic-db
pgpm init workspace
cd my-app
pgpm init
cd packages/my-module
pgpm install agentic-db

# Start PostgreSQL
pgpm docker start
eval "$(pgpm env)"
pgpm admin-users bootstrap --yes

# Deploy
pgpm deploy --createdb --database agentic-db --yes --package agentic-db
```

See the [`agentic-db` package README](packages/agentic-db) for the full deployment guide, schema details, and search capabilities.

## Packages

### Published

| Package | npm | Description |
|---------|-----|-------------|
| [`agentic-db`](packages/agentic-db) | `agentic-db` | pgpm SQL module -- the core database schema with 90+ tables and search indexes |
| [`@agentic-db/services`](packages/agentic-db-services) | `@agentic-db/services` | pgpm SQL module -- API endpoint and domain routing metadata |
| [`@agentic-db/sdk`](sdk/sdk) | `@agentic-db/sdk` | Type-safe Prisma-like ORM client generated from the GraphQL schema |
| [`@agentic-db/cli`](sdk/cli) | `@agentic-db/cli` | CLI tool for CRUD, search, and admin operations |

### Private (development only)

| Package | Description |
|---------|-------------|
| [`@agentic-db/provision`](packages/provision) | SDK-based blueprint provisioning (tables, relations, search) |
| [`@agentic-db/export`](packages/export) | pgpm export wrapper (extracts provisioned schema as SQL modules) |
| [`@agentic-db/rag`](packages/rag) | RAG CLI tools (hybrid search, batch embedding, multi-pass Q&A) |
| [`@agentic-db/worker`](packages/worker) | Background worker for auto-generating embeddings via Ollama |
| [`@agentic-db/schemas`](sdk/schemas) | GraphQL schema files (`.graphql`) used by codegen |
| [`@agentic-db/integration-tests`](packages/integration-tests) | Integration test suite (ORM, embeddings, RAG, unified search) |
| [`@agentic-db/cli-e2e-tests`](packages/cli-e2e-tests) | End-to-end CLI test suite |

## Prerequisites

- Node.js 20+
- pnpm
- Docker
- PostgreSQL client tools (`psql`)
- pgpm (`npm install -g pgpm`)

## Docker Setup

`pgpm docker start` is the standard way to start PostgreSQL for development. It runs `constructiveio/postgres-plus:18` with 2 GB shared memory by default:

```bash
pgpm docker start              # Start PostgreSQL
pgpm docker start --recreate   # Tear down and recreate
pgpm docker stop               # Stop
pgpm docker ls                 # List services and status
```

To include Ollama for embedding generation:

```bash
pgpm docker start --ollama             # PostgreSQL + Ollama (CPU)
pgpm docker start --ollama --gpu       # PostgreSQL + Ollama (NVIDIA GPU)
```

Already have an LLM running? Just use `pgpm docker start` and point `OLLAMA_URL` at your existing instance.

The repo also includes a `docker-compose.yml` with tuned Postgres settings and Ollama as an alternative:

```bash
docker compose up -d                    # Postgres + Ollama (CPU)
docker compose --profile gpu up -d      # Postgres + Ollama (NVIDIA GPU)
```

## Schema Development Workflow

The schema is developed using the Constructive SDK provisioning pipeline:

1. **Edit blueprints** in [`packages/provision/src/schemas/`](packages/provision/src/schemas) -- define tables, fields, relations, search nodes
2. **Provision** -- `cd packages/provision && pnpm run provision` applies blueprints against the platform DB
3. **Export** -- `cd packages/export && pnpm run export` extracts the schema as pgpm SQL modules
4. **Deploy** -- `pgpm deploy --package agentic-db` installs into any Postgres database
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

## AI Skills

This repo ships with [Agent Skills](https://github.com/agent-skills/agent-skills) that teach AI coding assistants (Devin, Claude Code, Cursor, Copilot, etc.) how to work with the SDK, CLI, and pgpm.

### Available Skills

| Skill | Description |
|-------|-------------|
| `pgpm` | Install and deploy agentic-db using pgpm |
| `cli-default` | CLI command reference for all 91 tables |
| `orm-default` | Type-safe ORM client reference for all 91 tables |

### Installing Skills from This Repo

Skills are located at `.agents/skills/` and are auto-discovered when AI tools clone or index this repo. To use them in your own project, point your AI tool at this repository:

**Devin** -- Connect the `constructive-io/agentic-db` repo to your Devin organization. Skills are indexed automatically and available in every session.

**Claude Code** -- Clone and reference the skills directory:

```bash
# In your project's .claude/skills/ directory
git clone https://github.com/constructive-io/agentic-db.git /tmp/agentic-db
cp -r /tmp/agentic-db/.agents/skills/* .claude/skills/
```

**Cursor / Copilot / Windsurf** -- Copy the skills into the corresponding directory for your tool:

```
.cursor/skills/    # Cursor
.github/skills/    # Copilot
.windsurf/skills/  # Windsurf
```

Or reference them directly from the cloned repo -- all tools scan `.agents/skills/` automatically.

### Using Skills

Once installed, you can ask your AI assistant things like:

- *"Deploy agentic-db to a new database"* -- triggers the `pgpm` skill
- *"Query contacts using the ORM"* -- triggers the `orm-default` skill
- *"Search for deals using the CLI"* -- triggers the `cli-default` skill

## Credits

Built by the [Constructive](https://constructive.io) team -- creators of modular Postgres tooling for secure, composable backends. Contribute on [GitHub](https://github.com/constructive-io).

## Disclaimer

AS DESCRIBED IN THE LICENSES, THE SOFTWARE IS PROVIDED "AS IS", AT YOUR OWN RISK, AND WITHOUT WARRANTIES OF ANY KIND.

No developer or entity involved in creating this software will be liable for any claims or damages whatsoever associated with your use, inability to use, or your interaction with other users of the code, including any direct, indirect, incidental, special, exemplary, punitive or consequential damages, or loss of profits, cryptocurrencies, tokens, or anything else of value.
