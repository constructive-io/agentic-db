-- Revert: schemas/agent_db_app_public/tables/habit_logs/columns/reps/column


ALTER TABLE agent_db_app_public.habit_logs 
  DROP COLUMN reps RESTRICT;


