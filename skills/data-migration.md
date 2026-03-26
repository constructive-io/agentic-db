---
name: agentic-db-data-migration
description: Migrate legacy data from avengers into agentic-db. Covers Golden User seeding, RLS entity_id mapping, AI brain transformation, and pure SQL cross-database bulk inserts.
---

# Legacy Data Migration

This skill outlines the exact procedure for migrating data from the legacy `avengers` database into the new standalone `agentic-db` multi-tenant architecture. 

Because the new schema relies heavily on Row Level Security (RLS) and specific ownership chains, data cannot be blindly copied.

## Phase 1: Golden User & Agent Seeding

Before importing data, you MUST seed a Golden User to serve as the `entity_id` owner, and a Golden Agent for the `agent_id` owner.

```sql
-- 1. Seed Golden User
INSERT INTO agentic_db_users_public.users (id, username, display_name, type) 
VALUES ('019d268c-ac74-7c84-bd45-a5a585a9f05f', 'agent', 'Agent', 1) ON CONFLICT DO NOTHING;

INSERT INTO agentic_db_emails_public.emails (owner_id, email, is_verified, is_primary) 
VALUES ('019d268c-ac74-7c84-bd45-a5a585a9f05f', 'agent@example.com', TRUE, TRUE) ON CONFLICT DO NOTHING;

INSERT INTO agentic_db_memberships_public.app_memberships (actor_id, is_admin, is_owner) 
VALUES ('019d268c-ac74-7c84-bd45-a5a585a9f05f', TRUE, TRUE) ON CONFLICT DO NOTHING;

-- 2. Seed Golden Agent (for AI Brain ownership)
INSERT INTO agentic_db_app_public.agents (id, entity_id, name) 
VALUES ('00000000-0000-0000-0000-000000000001', '019d268c-ac74-7c84-bd45-a5a585a9f05f', 'Golden Agent') ON CONFLICT DO NOTHING;
```

## Phase 2: Safely Pausing the Database

To avoid firing thousands of background worker jobs (like the Graphile embeddings chunker) or failing foreign-key checks out-of-order, disable triggers during the bulk import:

```sql
SET session_replication_role = replica;
```

## Phase 3: SQL Data Mapping Rules

When using `dblink` or `postgres_fdw` to copy the tables across databases, apply these transformation rules:

1. **Inject `entity_id`**: Every inserted row in `agentic_db_app_public` MUST include `entity_id = '019d268c-ac74-7c84-bd45-a5a585a9f05f'`.
2. **The AI Brain**:
   - `agent.skills` ➔ `agentic_db_app_public.skills` (inject `agent_id`)
   - `agent.rules` ➔ `agentic_db_app_public.rules` (inject `agent_id`)
   - `agent.tasks` ➔ `agentic_db_app_public.tasks` (inject `agent_id`)
   - `agent.memories` ➔ `agentic_db_app_public.memories` (Synthesize `title` if missing)
   - `agent.tools` ➔ `agentic_db_app_public.tool_definitions` (Map legacy `config` JSON to `input_schema` and `output_schema`)
3. **CRM & Communications**:
   - Map `crm.event_content` directly into `agentic_db_app_public.notes` and `event_notes`.
   - **Emails**: The legacy `thread_id` was text. Create a unique UUID for each thread in `email_threads`, then map `email.messages` to `emails` using the newly generated UUIDs.
4. **Direct Mappings**:
   - `crm.contacts`, `companies`, `events`, `venues` can map 1:1 (plus the `entity_id`).

## Phase 4: Resume & Worker Kickoff

Once all data is confirmed via row counts:

```sql
-- Re-enable triggers
SET session_replication_role = DEFAULT;

-- Force the embedding worker to pick up the new data
UPDATE agentic_db_app_public.contacts SET embedding_stale = true;
UPDATE agentic_db_app_public.emails SET embedding_stale = true;
-- (Repeat for all chunked tables)
```

## Reference: Exact Migration Script

If you need to re-run the pure SQL mapping script from `avengers` to `agentic-db`, the full script is maintained at `packages/import-avengers/scripts/sql-migration.sql`.

To run it headless:
```bash
# 1. Start the PG connection and disable triggers
PGPASSWORD=password psql -U postgres -h localhost -d agentic-db -c "SET session_replication_role = replica;"

# 2. Run the migration script
PGPASSWORD=password psql -U postgres -h localhost -d agentic-db -f packages/import-avengers/scripts/sql-migration.sql

# 3. Re-enable triggers
PGPASSWORD=password psql -U postgres -h localhost -d agentic-db -c "SET session_replication_role = DEFAULT;"
```
