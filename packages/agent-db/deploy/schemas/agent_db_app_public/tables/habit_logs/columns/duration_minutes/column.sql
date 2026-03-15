-- Deploy: schemas/agent_db_app_public/tables/habit_logs/columns/duration_minutes/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habit_logs/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/activity_type/column


ALTER TABLE agent_db_app_public.habit_logs 
  ADD COLUMN duration_minutes numeric;

