-- Revert: schemas/agentic_db_app_public/tables/habits/columns/best_streak/column


ALTER TABLE agentic_db_app_public.habits 
  DROP COLUMN best_streak RESTRICT;


