-- Deploy: schemas/agentic_db_app_public/tables/agent_spawns/columns/agent_id/alterations/alt0000002354
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/table
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/agent_id/column
-- requires: schemas/agentic_db_app_public/tables/session_archives/indexes/session_archives_session_id_idx


ALTER TABLE "agentic_db_app_public".agent_spawns 
  ALTER COLUMN agent_id SET NOT NULL;

