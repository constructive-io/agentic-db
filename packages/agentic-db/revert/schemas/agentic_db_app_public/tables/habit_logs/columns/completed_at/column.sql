-- Revert: schemas/agentic_db_app_public/tables/habit_logs/columns/completed_at/column


ALTER TABLE agentic_db_app_public.habit_logs 
  DROP COLUMN completed_at RESTRICT;


