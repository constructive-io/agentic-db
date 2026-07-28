# @agentic-db/worker

Background worker for auto-generating vector embeddings. Polls the `app_jobs` queue deployed with the agentic-db schema and processes the embedding/chunking jobs enqueued by Postgres INSERT/UPDATE triggers.

This is a **private** package -- not published to npm.

## How It Works

1. When a record is inserted or updated in any embedding-enabled table (contacts, notes, companies, etc.), a Postgres trigger enqueues a `generate_embedding` job via `app_jobs.add_job()`; tables with chunk support (contacts, notes, documents) also enqueue a `generate_chunks` job
2. The worker claims jobs from `app_jobs.jobs` (via `app_jobs.get_job` / `complete_job` / `fail_job`), derives the record's embedding source fields from its `<table>_embedding_stale_update_tg` trigger, and generates an embedding via Ollama (`nomic-embed-text`)
3. The embedding vector (and `embedding_text`) is written back to the record, which stamps `embedding_updated_at` via the schema's own triggers
4. For `generate_chunks` jobs, the source text is split into fixed-size overlapping chunks and each chunk is embedded into the corresponding `*_chunks` table

## Registered task identifiers

| Identifier | Task |
| --- | --- |
| `generate_embedding` | embed a row (current trigger name) |
| `generate_chunks` | chunk + embed a row (current trigger name) |
| `embedding:generate_embedding` | namespaced alias (Constructive compute-worker convention) |
| `embedding:generate_chunks` | namespaced alias (Constructive compute-worker convention) |
| `embed_record` | legacy pre-rename producer name |

## Usage

```bash
# Start the worker (connects to the database and polls for jobs)
pnpm run start
```

## Prerequisites

- A deployed `agentic-db` database (see [agentic-db](../agentic-db))
- Ollama running with the `nomic-embed-text` model pulled (`pgpm docker start --ollama`, or your own instance)
- Environment variables set (`eval "$(pgpm env)"`; `DATABASE_URL`, `OLLAMA_URL`, `EMBEDDING_MODEL` optional overrides)

## Developing

```bash
# Run tests
pnpm test

# Build
pnpm build
```
