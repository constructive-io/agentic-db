# @agentic-db/cli-e2e-tests

End-to-end test suite for the `@agentic-db/cli`. Spins up a real PostGraphile HTTP server, seeds data with pre-baked embeddings, runs the CLI as a subprocess, and asserts on JSON output.

This is a **private** package -- not published to npm.

## What It Tests

- CLI `search` command with various filters and limits
- Multi-table search across contacts, notes, companies
- JSON output parsing and field projection
- Full stack: CLI subprocess -> Ollama -> HTTP -> PostGraphile -> pgvector

## Running

```bash
# Run e2e tests
pnpm test
```

## Prerequisites

- A deployed `agentic-db` database (tests deploy ephemeral databases automatically)
- Environment variables set (`eval "$(pgpm env)"`)
