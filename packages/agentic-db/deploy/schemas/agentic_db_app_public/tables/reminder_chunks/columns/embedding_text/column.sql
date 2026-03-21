-- Deploy: schemas/agentic_db_app_public/tables/reminder_chunks/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/reminder_chunks/table
-- requires: schemas/agentic_db_app_public/tables/reminder_chunks/columns/content/alterations/alt0000004671


ALTER TABLE agentic_db_app_public.reminder_chunks 
  ADD COLUMN embedding_text text;

