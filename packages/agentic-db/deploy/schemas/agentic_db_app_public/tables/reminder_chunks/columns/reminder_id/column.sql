-- Deploy: schemas/agentic_db_app_public/tables/reminder_chunks/columns/reminder_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/reminder_chunks/table
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/indexes/idea_chunks_idea_id_idx


ALTER TABLE agentic_db_app_public.reminder_chunks 
  ADD COLUMN reminder_id uuid;

