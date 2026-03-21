-- Deploy: schemas/agentic_db_app_public/tables/agent_spawns/indexes/agent_spawns_agent_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/table
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/agent_id/column
-- requires: schemas/agentic_db_app_public/tables/session_archives/indexes/session_archives_session_id_idx


CREATE INDEX agent_spawns_agent_id_idx ON agentic_db_app_public.agent_spawns USING BTREE ( agent_id );

