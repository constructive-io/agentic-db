-- Deploy: schemas/agentic_db_app_public/tables/habit_logs/columns/distance_unit/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_logs/table
-- requires: schemas/agentic_db_app_public/tables/habit_logs/columns/distance/column


ALTER TABLE agentic_db_app_public.habit_logs 
  ADD COLUMN distance_unit text;

