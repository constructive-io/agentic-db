-- Revert: schemas/agent_db_app_public/tables/habit_logs/columns/duration_minutes/column


ALTER TABLE agent_db_app_public.habit_logs 
  DROP COLUMN duration_minutes RESTRICT;


