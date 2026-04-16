# @agentic-db/integration-tests

Integration test suite for `agentic-db`. Tests the full stack: pgpm deploy, ORM CRUD, vector embeddings, RAG pipeline, and unified search.

This is a **private** package -- not published to npm.

## Test Suites

| CI Job | Test File | What It Covers |
|--------|-----------|----------------|
| `orm-tests` | `orm.test.ts` | ORM CRUD on contacts, notes, agents, tasks; M:N and 1:N relations |
| `embedding-tests` | `embeddings.test.ts` | pgvector storage, chunk CRUD, cascade delete, cosine similarity |
| `embedding-pipeline` | `embedding-pipeline.test.ts` | Real Ollama embeddings, pgvector insertion, similarity ranking |
| `rag-tests` | `rag.test.ts` | Full RAG via ORM: create, embed, vector search, cross-table search, chunk search |
| `rag-tests` | `rag-unified-search.test.ts` | Unified search (searchScore), semantic ranking, chunk-aware search, cross-table merge |

## Running

```bash
# Run all integration tests
pnpm test

# Run a specific test file
pnpm test -- --testPathPattern=orm
pnpm test -- --testPathPattern=embeddings
pnpm test -- --testPathPattern=rag
```

## Prerequisites

- A deployed `agentic-db` database (tests deploy ephemeral databases automatically via `pgsql-test`)
- For embedding tests: Ollama running locally with `nomic-embed-text` model
- Environment variables set (`eval "$(pgpm env)"`)
