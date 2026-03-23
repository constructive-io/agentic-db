# Schema Guide

The integration test schema is defined in `packages/integration-tests/__fixtures__/seed/schema.sql`. It creates a subset of the agentic-db tables for testing.

## Schema Name

All tables live in `agentic_db_app_public`. This must match:
- The `SCHEMAS` array in test files
- The schema used by `getConnectionsObject()`

## Current Tables

| Table | Purpose | Relations |
|---|---|---|
| `contacts` | Core entity — people | Has `embedding_text`, chunks via `contact_chunks` |
| `notes` | Free-form text content | Has `embedding_text`, chunks via `note_chunks` |
| `agents` | AI agent definitions | Has tasks via `agent_tasks` |
| `agent_tasks` | Tasks assigned to agents | FK to `agents` (1:N, CASCADE) |
| `contact_notes` | Junction table (M:N) | FKs to `contacts` and `notes` (CASCADE) |
| `contact_chunks` | Embedding chunks for contacts | FK to `contacts` (CASCADE), has `embedding vector(768)` |
| `note_chunks` | Embedding chunks for notes | FK to `notes` (CASCADE), has `embedding vector(768)` |

## Required Extensions

```sql
CREATE EXTENSION IF NOT EXISTS vector;
```

The `vector` extension is required for `contact_chunks.embedding` and `note_chunks.embedding` columns. The `constructiveio/postgres-plus:18` Docker image includes this.

## Key Conventions

### UUID Primary Keys

All tables use `uuid PRIMARY KEY DEFAULT gen_random_uuid()`. For seed data, use fixed UUIDs for deterministic assertions:

```sql
INSERT INTO "agentic_db_app_public".contacts (id, first_name, ...)
VALUES ('11111111-1111-1111-1111-111111111111', 'Alice', ...);
```

### Timestamps

All tables include:
```sql
created_at timestamptz DEFAULT now(),
updated_at timestamptz DEFAULT now()
```

### Foreign Keys with CASCADE

All foreign keys use `ON DELETE CASCADE` to ensure clean teardown:

```sql
agent_id uuid NOT NULL REFERENCES "agentic_db_app_public".agents(id) ON DELETE CASCADE
```

### Junction Tables

Junction tables (M:N) use composite primary keys and need a smart comment for PostGraphile:

```sql
CREATE TABLE "agentic_db_app_public".contact_notes (
  contact_id uuid NOT NULL REFERENCES ... ON DELETE CASCADE,
  note_id uuid NOT NULL REFERENCES ... ON DELETE CASCADE,
  PRIMARY KEY (contact_id, note_id)
);

COMMENT ON TABLE "agentic_db_app_public".contact_notes IS E'@behavior +manyToMany';
```

The `@behavior +manyToMany` comment tells PostGraphile to generate proper M:N connection fields.

### Grants

Every table needs explicit grants at the bottom of `schema.sql`:

```sql
GRANT USAGE ON SCHEMA "agentic_db_app_public" TO PUBLIC;
GRANT CREATE ON SCHEMA "agentic_db_app_public" TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".<table_name> TO PUBLIC;
```

Without these, embedding tests fail with "permission denied for schema".

## Adding a New Table

1. Add `CREATE TABLE` in `schema.sql` (after the tables it references)
2. Add indexes if needed
3. Add `GRANT ALL` at the bottom
4. Add seed data in `test-data.sql` with fixed UUIDs
5. The codegen pipeline will auto-discover the new table and generate ORM models

## Vector Columns

For tables that need embedding search:

```sql
-- On the main table (for text that gets embedded)
embedding_text text,

-- On the chunks table (for actual vector storage)
CREATE TABLE "agentic_db_app_public".<entity>_chunks (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  <entity>_id uuid NOT NULL REFERENCES ... ON DELETE CASCADE,
  content text NOT NULL,
  chunk_index int NOT NULL DEFAULT 0,
  embedding vector(768),
  created_at timestamptz DEFAULT now()
);
```

The `768` dimension matches common embedding models (e.g., `nomic-embed-text`).

## Seed Data (test-data.sql)

Seed data uses deterministic UUIDs so tests can assert on specific records:

```sql
-- Contacts
'11111111-1111-1111-1111-111111111111'  -- Alice Smith
'22222222-2222-2222-2222-222222222222'  -- Bob Jones

-- Notes
'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa'  -- Meeting kickoff
'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb'  -- Research notes

-- Agents
'cccccccc-cccc-cccc-cccc-cccccccccccc'  -- Research Agent
```

Keep the seed data minimal — just enough for assertion targets. Tests that need additional data should create it in the test itself.
