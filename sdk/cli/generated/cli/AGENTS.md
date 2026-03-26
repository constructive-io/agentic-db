# agentic-db CLI

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

## Stack

- Generated CLI for a GraphQL API (TypeScript)
- 122 tables
- Config stored at `~/.agentic-db/config/` via appstash

## Quick Start

```bash
agentic-db context create dev --endpoint <url>
agentic-db context use dev
agentic-db auth set-token <token>
```

## Resources

- **Full API reference:** [README.md](./README.md) — CRUD docs for all 122 tables
- **Schema types:** [types.ts](./types.ts)

## Conventions

- All commands output JSON to stdout
- Use `--help` on any command for usage
- Exit 0 = success, 1 = error

## Boundaries

All files in this directory are generated. Do not edit manually.
