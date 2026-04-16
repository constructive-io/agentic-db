# @agentic-db/worker

Background worker for auto-generating vector embeddings. Uses [graphile-worker](https://github.com/graphile/worker) to process embedding jobs triggered by Postgres INSERT/UPDATE triggers.

This is a **private** package -- not published to npm.

## How It Works

1. When a record is inserted or updated in any embedding-enabled table (contacts, notes, companies, etc.), a Postgres trigger enqueues an `embed_record` job via `graphile_worker.add_job()`
2. The worker picks up the job, reads the record's source fields, and generates an embedding via Ollama (`nomic-embed-text`)
3. The embedding vector is written back to the record's `embedding` column
4. For tables with chunk support (contacts, notes), the worker also splits the text into chunks and embeds each chunk into the corresponding `*_chunks` table

## Usage

```bash
# Start the worker (connects to the database and polls for jobs)
pnpm run start
```

## Prerequisites

- A deployed `agentic-db` database (see [agentic-db](../agentic-db))
- Ollama running with the `nomic-embed-text` model pulled (`pgpm docker start --ollama`, or your own instance)
- Environment variables set (`eval "$(pgpm env)"`)

## Configuration

The worker reads table configurations from `src/tasks/embed_record.ts`, which defines:
- Which tables to embed
- Which fields to use as source text
- The Ollama model and endpoint

## Developing

```bash
# Run tests
pnpm test

# Build
pnpm build
```
