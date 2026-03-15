-- Revert: schemas/agent_db_app_public/tables/habit_logs/columns/updated_at/column


ALTER TABLE agent_db_app_public.habit_logs 
  DROP COLUMN updated_at RESTRICT;


