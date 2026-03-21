-- Deploy: schemas/agentic_db_app_public/tables/habit_logs/columns/notes/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_logs/table
-- requires: schemas/agentic_db_app_public/tables/habit_logs/columns/data/alterations/alt0000004622


ALTER TABLE agentic_db_app_public.habit_logs 
  ADD COLUMN notes text;

