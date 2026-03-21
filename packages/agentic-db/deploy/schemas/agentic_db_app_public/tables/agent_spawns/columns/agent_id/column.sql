-- Deploy: schemas/agentic_db_app_public/tables/agent_spawns/columns/agent_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/table
-- requires: schemas/agentic_db_app_public/tables/session_archives/indexes/session_archives_session_id_idx


ALTER TABLE "agentic_db_app_public".agent_spawns 
  ADD COLUMN agent_id uuid;

