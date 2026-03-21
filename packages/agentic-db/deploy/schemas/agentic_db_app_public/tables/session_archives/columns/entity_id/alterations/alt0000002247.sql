-- Deploy: schemas/agentic_db_app_public/tables/session_archives/columns/entity_id/alterations/alt0000002247
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archives/table
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/columns/completed_at/column
-- requires: schemas/agentic_db_app_public/tables/session_archives/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".session_archives 
  ALTER COLUMN entity_id SET NOT NULL;

