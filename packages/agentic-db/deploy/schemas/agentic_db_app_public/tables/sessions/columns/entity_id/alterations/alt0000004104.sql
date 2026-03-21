-- Deploy: schemas/agentic_db_app_public/tables/sessions/columns/entity_id/alterations/alt0000004104
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/sessions/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/sessions/columns/entity_id/column


ALTER TABLE agentic_db_app_public.sessions 
  ALTER COLUMN entity_id SET NOT NULL;

