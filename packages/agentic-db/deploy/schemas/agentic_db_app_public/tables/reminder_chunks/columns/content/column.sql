-- Deploy: schemas/agentic_db_app_public/tables/reminder_chunks/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/reminder_chunks/table
-- requires: schemas/agentic_db_app_public/tables/reminder_chunks/columns/chunk_index/alterations/alt0000002684


ALTER TABLE "agentic_db_app_public".reminder_chunks 
  ADD COLUMN content text;

