-- Revert: schemas/agent_db_app_public/tables/habit_logs/columns/sets/column


ALTER TABLE agent_db_app_public.habit_logs 
  DROP COLUMN sets RESTRICT;


