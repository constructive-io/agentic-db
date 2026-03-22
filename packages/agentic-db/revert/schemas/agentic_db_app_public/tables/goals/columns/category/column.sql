-- Revert: schemas/agentic_db_app_public/tables/goals/columns/category/column


ALTER TABLE agentic_db_app_public.goals 
  DROP COLUMN category RESTRICT;


