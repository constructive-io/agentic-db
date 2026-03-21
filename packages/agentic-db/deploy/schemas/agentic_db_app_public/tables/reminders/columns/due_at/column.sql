-- Deploy: schemas/agentic_db_app_public/tables/reminders/columns/due_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/reminders/table
-- requires: schemas/agentic_db_app_public/tables/reminders/columns/title/alterations/alt0000004599


ALTER TABLE agentic_db_app_public.reminders 
  ADD COLUMN due_at timestamptz;

