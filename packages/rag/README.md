# @agentic-db/rag

RAG (Retrieval-Augmented Generation) CLI tools for `agentic-db`. Provides commands for semantic search, batch embedding, and multi-pass Q&A across the database.

This is a **private** package -- not published to npm. It's used for local development and interactive querying.

## Commands

```bash
# Hybrid search across all CRM tables (vector + BM25 + tsvector + trigram)
pnpm run search

# Batch-embed all records across all tables
pnpm run embed:all

# Multi-pass RAG Q&A (query routing -> vector search -> LLM synthesis)
# Supports Ollama and Claude as LLM backends
pnpm run ask
```

## How It Works

- **search** -- Runs hybrid search combining pgvector cosine similarity, BM25 statistical ranking, tsvector full-text, and trigram fuzzy matching. Queries all 9 CRM tables in parallel.
- **embed:all** -- Iterates over all tables with embedding columns and generates embeddings via Ollama (`nomic-embed-text`).
- **ask** -- Multi-pass RAG pipeline: routes the question to relevant tables, performs vector search, then synthesizes an answer using Ollama or Claude.

## Prerequisites

- A deployed `agentic-db` database (see [agentic-db](../agentic-db))
- Ollama running locally (for embeddings and local LLM)
- Environment variables set (`eval "$(pgpm env)"`)

## Environment Variables

| Variable | Default | Description |
|----------|---------|-------------|
| `OLLAMA_URL` | `http://localhost:11434` | Ollama API endpoint |
| `ANTHROPIC_API_KEY` | -- | Required for Claude-based Q&A |
