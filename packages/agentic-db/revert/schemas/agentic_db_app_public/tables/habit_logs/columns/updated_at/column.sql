-- Revert: schemas/agentic_db_app_public/tables/habit_logs/columns/updated_at/column


ALTER TABLE agentic_db_app_public.habit_logs 
  DROP COLUMN updated_at RESTRICT;


