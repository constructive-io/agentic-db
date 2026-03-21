-- Revert: schemas/agentic_db_app_public/tables/habits/columns/current_streak/column


ALTER TABLE agentic_db_app_public.habits 
  DROP COLUMN current_streak RESTRICT;


