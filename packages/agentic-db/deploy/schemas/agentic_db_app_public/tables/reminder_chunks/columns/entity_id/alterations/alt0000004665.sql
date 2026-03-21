-- Deploy: schemas/agentic_db_app_public/tables/reminder_chunks/columns/entity_id/alterations/alt0000004665
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/reminder_chunks/table
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/reminder_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.reminder_chunks 
  ALTER COLUMN entity_id SET NOT NULL;

