---
name: agentic-db-pgpm
description: "Install and deploy the agentic-db PostgreSQL module using pgpm. Use when asked to 'install agentic-db', 'deploy the database', 'set up agentic-db', 'create a workspace', or when bootstrapping a new project that depends on agentic-db."
---

# Installing agentic-db with pgpm

Install and deploy the `agentic-db` PostgreSQL module using [pgpm](https://pgpm.io) (PostgreSQL Package Manager).

## Prerequisites

- Node.js 20+
- Docker
- pgpm (`npm install -g pgpm`)

## Quick Start

```bash
# 1. Install pgpm
npm install -g pgpm

# 2. Create a workspace
pgpm init workspace
cd my-app
pgpm init
cd packages/my-module

# 3. Install agentic-db
pgpm install agentic-db

# 4. Start PostgreSQL
pgpm docker start
eval "$(pgpm env)"
pgpm admin-users bootstrap --yes

# 5. Deploy
pgpm deploy --createdb --database agentic-db --yes --package agentic-db
```

## With Ollama (for embeddings)

```bash
# Start PostgreSQL + Ollama
pgpm docker start --ollama

# With NVIDIA GPU acceleration
pgpm docker start --ollama --gpu

# Load env vars and bootstrap
eval "$(pgpm env)"
pgpm admin-users bootstrap --yes

# Deploy
pgpm deploy --createdb --database agentic-db --yes --package agentic-db

# Pull the embedding model
ollama pull nomic-embed-text
```

If you already have an LLM running, just use `pgpm docker start` and point `OLLAMA_URL` at your existing instance.

## Key Commands

| Command | Purpose |
|---------|---------|
| `pgpm docker start` | Start PostgreSQL container |
| `pgpm docker start --ollama` | Start PostgreSQL + Ollama |
| `pgpm docker start --ollama --gpu` | Start PostgreSQL + Ollama with NVIDIA GPU |
| `pgpm docker stop` | Stop all services |
| `pgpm docker ls` | List running services |
| `eval "$(pgpm env)"` | Load database connection env vars |
| `pgpm admin-users bootstrap --yes` | Create required PostgreSQL roles |
| `pgpm deploy --createdb --database <name> --yes --package agentic-db` | Create database and deploy |
| `pgpm install <module>` | Install a pgpm module dependency |

## What Gets Deployed

The `agentic-db` module provisions 90+ tables across multiple schemas:

- **CRM** -- contacts, companies, deals, interactions, touchpoints
- **Productivity** -- tasks, projects, goals, habits, calendars, events
- **Knowledge** -- notes, memories, prompts, rules, templates
- **AI/Agents** -- agents, skills, tools, runtime state, execution logs
- **Communication** -- emails, threads, messages, conversations
- **Search** -- vector embeddings (pgvector), full-text (tsvector), BM25, trigram, PostGIS spatial

## Verifying the Deployment

```bash
# Check deployed tables
psql -d agentic-db -c "SELECT count(*) FROM information_schema.tables WHERE table_schema = 'agentic_db_app_public';"

# Check search indexes
psql -d agentic-db -c "SELECT indexname FROM pg_indexes WHERE schemaname = 'agentic_db_app_public' AND indexname LIKE '%embedding%' LIMIT 10;"
```

## Learn More

- [pgpm documentation](https://pgpm.io)
- [Constructive platform](https://constructive.io)
