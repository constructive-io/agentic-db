-- Deploy: schemas/agentic_db_app_public/tables/reminders/columns/title/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/reminders/table
-- requires: schemas/agentic_db_app_public/tables/reminders/columns/updated_at/alterations/alt0000002612


ALTER TABLE "agentic_db_app_public".reminders 
  ADD COLUMN title text;

