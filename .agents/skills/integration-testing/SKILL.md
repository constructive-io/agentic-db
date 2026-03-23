---
name: integration-testing
description: "Run and maintain the agentic-db integration test suite — ORM tests (ConstructivePreset + codegen + ORM client) and embedding tests (pgvector, chunks, cosine similarity). Use when asked to 'run integration tests', 'fix tests', 'add a test', 'test the ORM', 'test embeddings', or when working in packages/integration-tests."
---

# Integration Testing

Integration test suite for agentic-db. Two test suites validate the full Constructive pipeline and pgvector embeddings against a real PostgreSQL database.

## When to Apply

Use this skill when:
- Running or debugging integration tests
- Adding new tables or columns to the schema
- Modifying the ORM codegen pipeline
- Working with embeddings or pgvector
- Fixing CI failures in the integration-test workflow
- Adding new test cases

## Prerequisites

- **Node.js 22+** — Required. Node.js 20 causes duplicate `graphql` module instances and "Cannot use GraphQLObjectType from another module or realm" runtime errors. See [references/troubleshooting.md](references/troubleshooting.md).
- **pnpm 10+** — Pin to exact version (e.g., `10.22.0`) in CI.
- **Docker** with `constructiveio/postgres-plus:18` image (includes pgvector, pg_textsearch, PostGIS, uuid-ossp).
- **pnpm install** at workspace root before running tests.

## Quick Start (Local)

```bash
# 1. Start PostgreSQL (requires Docker)
docker run -d --name pg-test -p 5432:5432 \
  -e POSTGRES_PASSWORD=password \
  constructiveio/postgres-plus:18

# 2. Set environment
export PGHOST=localhost PGPORT=5432 PGUSER=postgres PGPASSWORD=password

# 3. Install dependencies (from workspace root)
pnpm install

# 4. Run tests
cd packages/integration-tests
pnpm test:orm          # ORM tests (12 tests)
pnpm test:embeddings   # Embedding tests (5 tests)
pnpm test              # Both suites
```

## Test Suites

### ORM Tests (`__tests__/orm.test.ts`)

Tests the **full codegen -> ORM runtime chain**:

1. Seeds DB with `schema.sql` + `test-data.sql`
2. Builds a Graphile schema via `graphile-test` with `ConstructivePreset`
3. Runs `@constructive-io/graphql-codegen` pipeline (introspection -> inferTables -> generateOrm)
4. Compiles generated TypeScript and loads `createClient`
5. Exercises ORM model methods (`findMany`, `create`, relations)

**Critical: Must use the Constructive paradigm — ConstructivePreset + codegen + generated ORM client. Never raw GraphQL queries.**

| Test Group | What It Tests |
|---|---|
| Codegen smoke test | `createClient` returns models for all tables with CRUD methods |
| Contact CRUD | `findMany` returns seeded data, `create` inserts new rows |
| Note CRUD | `findMany` + `create` |
| Agent CRUD | `findMany` + `create` |
| M:N relations | `contact.findMany` with nested `notes` connection, junction row creation |
| 1:N relations | `agent.create` + `agentTask.create`, agent with tasks connection |

### Embedding Tests (`__tests__/embeddings.test.ts`)

Tests pgvector storage and retrieval using **raw SQL** via `pgsql-test` (no ORM — embeddings are tested at the database level):

| Test Group | What It Tests |
|---|---|
| pgvector Storage | Store/retrieve `embedding_text` on contacts and notes |
| Contact Chunks | Create chunks, verify CASCADE delete |
| Note Chunks | Create chunks, verify CASCADE delete |
| Cosine Similarity | Insert vector embeddings, query by `<=>` distance, verify ordering |

Uses synthetic 768-dim vectors (no Ollama dependency).

## Architecture

```
packages/integration-tests/
├── __fixtures__/seed/
│   ├── schema.sql         # Creates 7 tables in agentic_db_app_public
│   └── test-data.sql      # Seeds contacts, notes, agents, tasks, junction rows
├── __tests__/
│   ├── orm.test.ts         # ORM integration tests
│   ├── embeddings.test.ts  # pgvector tests
│   └── helpers/
│       ├── codegen-helper.ts   # Runs full codegen pipeline at test time
│       └── graphile-adapter.ts # Bridges ORM client to graphile-test
├── __generated__/          # Generated at test time (gitignored)
├── jest.config.js
├── package.json
└── tsconfig.json
```

## Key Dependencies

All versions must align with `constructive-io/constructive` repo:

| Package | Version | Purpose |
|---|---|---|
| `graphile-test` | ^4.5.10 | GraphQL schema testing against real PostgreSQL |
| `pgsql-test` | ^4.5.10 | Raw SQL testing with transaction rollback |
| `graphile-settings` | 4.12.2 | Provides `ConstructivePreset` |
| `graphql` | 16.13.0 | **Must be exactly this version** — pinned via pnpm.overrides |
| `@constructive-io/graphql-codegen` | 4.21.2 | ORM code generation from introspection |
| `@constructive-io/graphql-query` | 3.9.1 | `inferTablesFromIntrospection`, `SCHEMA_INTROSPECTION_QUERY` |
| `@constructive-io/graphql-types` | 3.3.4 | `GraphQLAdapter`, `QueryResult` types |
| `gql-ast` | 3.3.3 | GraphQL AST utilities (peer dep) |
| `@0no-co/graphql.web` | ^1.2.0 | Lightweight GraphQL parser (peer dep) |

## pnpm.overrides (Root package.json)

The root `package.json` **must** pin all PostGraphile sub-packages to prevent module duplication:

```json
"pnpm": {
  "overrides": {
    "graphql": "16.13.0",
    "grafast": "1.0.0-rc.9",
    "graphile-build": "5.0.0-rc.6",
    "graphile-build-pg": "5.0.0-rc.8",
    "graphile-config": "1.0.0-rc.6",
    "graphile-utils": "5.0.0-rc.8",
    "postgraphile": "5.0.0-rc.10",
    "@dataplan/json": "1.0.0-rc.6",
    "@dataplan/pg": "1.0.0-rc.8",
    "pg-sql2": "5.0.0-rc.5",
    "tamedevil": "0.1.0-rc.6"
  }
}
```

**Why:** Without these, pnpm resolves multiple versions of `graphql` (e.g., 16.13.0 and 16.13.1). GraphQL objects from one instance are incompatible with another, causing "Cannot use GraphQLObjectType from another module or realm" errors.

## CI Workflow

File: `.github/workflows/integration-test.yml`

Three parallel jobs:
1. **pgpm-deploy** — Deploys agentic-db and agentic-db-services packages, verifies tables/indexes
2. **orm-tests** — Runs ORM test suite
3. **embedding-tests** — Runs embedding test suite

Each job gets its own `constructiveio/postgres-plus:18` service container.

### CI Requirements

- **Node.js 22** — `node-version: '22'` in `actions/setup-node`
- **pnpm 10.22.0** — Exact version in `pnpm/action-setup`
- **`--frozen-lockfile`** — Prevents silent dependency drift
- **Docker image** — `docker.io/constructiveio/postgres-plus:18` (includes pgvector, pg_textsearch, PostGIS)

## Adding a New Table

1. Add the `CREATE TABLE` statement to `__fixtures__/seed/schema.sql`
2. Add seed data to `__fixtures__/seed/test-data.sql` (use fixed UUIDs for deterministic tests)
3. Add `GRANT ALL` for the new table at the bottom of `schema.sql`
4. Add test cases in `orm.test.ts` — the codegen pipeline will automatically pick up the new table
5. If the table has vector columns, add embedding tests in `embeddings.test.ts`

## Fixed Test UUIDs

| Constant | Value | Entity |
|---|---|---|
| `CONTACT_ALICE` | `11111111-1111-1111-1111-111111111111` | Contact: Alice Smith |
| `CONTACT_BOB` | `22222222-2222-2222-2222-222222222222` | Contact: Bob Jones |
| `NOTE_KICKOFF` | `aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa` | Note: Meeting kickoff |
| `AGENT_RESEARCH` | `cccccccc-cccc-cccc-cccc-cccccccccccc` | Agent: Research Agent |

## Reference Guide

| Reference | Topic | Consult When |
|---|---|---|
| [references/codegen-pipeline.md](references/codegen-pipeline.md) | How the codegen helper works | Debugging codegen failures, understanding the pipeline |
| [references/graphile-adapter.md](references/graphile-adapter.md) | GraphileTestAdapter implementation | Modifying how ORM talks to graphile-test |
| [references/troubleshooting.md](references/troubleshooting.md) | Common errors and fixes | CI failures, module duplication, schema issues |
| [references/ci-workflow.md](references/ci-workflow.md) | CI workflow configuration details | Modifying CI, adding jobs, debugging CI failures |
| [references/schema-guide.md](references/schema-guide.md) | Seed schema structure and conventions | Adding tables, modifying schema, understanding grants |
