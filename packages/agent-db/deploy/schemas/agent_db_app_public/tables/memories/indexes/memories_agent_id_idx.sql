-- Deploy: schemas/agent_db_app_public/tables/memories/indexes/memories_agent_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/memories/columns/agent_id/column
-- requires: schemas/agent_db_app_public/tables/memories/indexes/memories_memory_type_idx


CREATE INDEX memories_agent_id_idx ON "agent_db_app_public".memories USING BTREE ( agent_id );

