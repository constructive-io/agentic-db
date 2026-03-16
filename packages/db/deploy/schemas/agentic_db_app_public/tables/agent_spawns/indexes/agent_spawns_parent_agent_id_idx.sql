-- Deploy: schemas/agentic_db_app_public/tables/agent_spawns/indexes/agent_spawns_parent_agent_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/table
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/parent_agent_id/column
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_last_accessed_at_idx


CREATE INDEX agent_spawns_parent_agent_id_idx ON "agentic_db_app_public".agent_spawns USING BTREE ( parent_agent_id );

