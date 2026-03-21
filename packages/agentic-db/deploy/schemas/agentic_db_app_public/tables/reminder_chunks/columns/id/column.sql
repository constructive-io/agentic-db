-- Deploy: schemas/agentic_db_app_public/tables/reminder_chunks/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/reminder_chunks/table
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".reminder_chunks 
  ADD COLUMN id uuid;

