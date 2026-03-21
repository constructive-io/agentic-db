-- Revert: schemas/agentic_db_app_public/tables/habit_logs/columns/activity_type/column


ALTER TABLE agentic_db_app_public.habit_logs 
  DROP COLUMN activity_type RESTRICT;


