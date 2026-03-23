-- Revert: schemas/agentic_db_app_public/tables/goals/columns/title/column


ALTER TABLE agentic_db_app_public.goals 
  DROP COLUMN title RESTRICT;


