-- Revert: schemas/agentic_db_app_public/tables/habit_logs/columns/distance/column


ALTER TABLE agentic_db_app_public.habit_logs 
  DROP COLUMN distance RESTRICT;


