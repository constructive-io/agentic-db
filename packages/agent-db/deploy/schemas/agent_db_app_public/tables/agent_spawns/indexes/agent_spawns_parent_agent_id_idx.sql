-- Deploy: schemas/agent_db_app_public/tables/agent_spawns/indexes/agent_spawns_parent_agent_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_spawns/table
-- requires: schemas/agent_db_app_public/tables/agent_spawns/columns/parent_agent_id/column
-- requires: schemas/agent_db_app_public/tables/documents/indexes/documents_last_accessed_at_idx


CREATE INDEX agent_spawns_parent_agent_id_idx ON agent_db_app_public.agent_spawns USING BTREE ( parent_agent_id );

