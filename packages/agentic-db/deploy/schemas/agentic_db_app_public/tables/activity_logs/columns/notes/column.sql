-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/columns/notes/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table


ALTER TABLE agentic_db_app_public.activity_logs 
  ADD COLUMN notes text;

