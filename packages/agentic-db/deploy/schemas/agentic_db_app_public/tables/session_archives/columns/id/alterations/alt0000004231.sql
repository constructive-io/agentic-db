-- Deploy: schemas/agentic_db_app_public/tables/session_archives/columns/id/alterations/alt0000004231
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archives/table
-- requires: schemas/agentic_db_app_public/tables/session_archives/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/completed_at/column


ALTER TABLE agentic_db_app_public.session_archives 
  ALTER COLUMN id SET NOT NULL;

