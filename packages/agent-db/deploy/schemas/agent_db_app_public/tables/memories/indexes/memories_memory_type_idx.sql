-- Deploy: schemas/agent_db_app_public/tables/memories/indexes/memories_memory_type_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/memories/columns/memory_type/column
-- requires: schemas/agent_db_app_public/tables/agents/indexes/agents_last_active_at_idx


CREATE INDEX memories_memory_type_idx ON agent_db_app_public.memories USING BTREE ( memory_type );

