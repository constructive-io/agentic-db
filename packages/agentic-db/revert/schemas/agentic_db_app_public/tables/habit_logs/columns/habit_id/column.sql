-- Revert: schemas/agentic_db_app_public/tables/habit_logs/columns/habit_id/column


ALTER TABLE agentic_db_app_public.habit_logs 
  DROP COLUMN habit_id RESTRICT;


