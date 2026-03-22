-- Revert: schemas/agentic_db_app_public/tables/goals/columns/id/column


ALTER TABLE agentic_db_app_public.goals 
  DROP COLUMN id RESTRICT;


