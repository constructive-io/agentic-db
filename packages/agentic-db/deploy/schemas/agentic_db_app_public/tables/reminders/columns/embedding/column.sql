-- Deploy: schemas/agentic_db_app_public/tables/reminders/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/reminders/table
-- requires: schemas/agentic_db_app_public/tables/reminders/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.reminders 
  ADD COLUMN embedding vector(768);

