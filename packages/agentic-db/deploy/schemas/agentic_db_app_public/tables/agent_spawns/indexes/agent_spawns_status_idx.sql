-- Deploy: schemas/agentic_db_app_public/tables/agent_spawns/indexes/agent_spawns_status_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/table
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/indexes/agent_spawns_parent_agent_id_idx


CREATE INDEX agent_spawns_status_idx ON agentic_db_app_public.agent_spawns USING BTREE ( status );

