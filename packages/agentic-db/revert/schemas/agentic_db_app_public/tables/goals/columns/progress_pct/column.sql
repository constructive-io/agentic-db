-- Revert: schemas/agentic_db_app_public/tables/goals/columns/progress_pct/column


ALTER TABLE agentic_db_app_public.goals 
  DROP COLUMN progress_pct RESTRICT;


