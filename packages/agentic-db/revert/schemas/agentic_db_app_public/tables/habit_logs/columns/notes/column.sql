-- Revert: schemas/agentic_db_app_public/tables/habit_logs/columns/notes/column


ALTER TABLE agentic_db_app_public.habit_logs 
  DROP COLUMN notes RESTRICT;


