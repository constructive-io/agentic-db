-- Revert: schemas/agent_db_app_public/tables/habit_logs/columns/completed_at/alterations/alt0000001513


ALTER TABLE agent_db_app_public.habit_logs 
  ALTER COLUMN completed_at DROP NOT NULL;


