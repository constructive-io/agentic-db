-- Deploy: schemas/agentic_db_app_public/tables/habit_logs/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_logs/table
-- requires: schemas/agentic_db_app_public/tables/habit_logs/columns/notes/column


ALTER TABLE agentic_db_app_public.habit_logs 
  ADD COLUMN tags citext[];

