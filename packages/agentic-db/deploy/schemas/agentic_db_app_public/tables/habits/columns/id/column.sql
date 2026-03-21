-- Deploy: schemas/agentic_db_app_public/tables/habits/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/reminders/columns/embedding/column


ALTER TABLE agentic_db_app_public.habits 
  ADD COLUMN id uuid;

