-- Deploy: schemas/agentic_db_app_public/tables/session_archives/alterations/alt0000001248
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archives/table
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/completed_at/column


ALTER TABLE "agentic_db_app_public".session_archives 
  DISABLE ROW LEVEL SECURITY;

