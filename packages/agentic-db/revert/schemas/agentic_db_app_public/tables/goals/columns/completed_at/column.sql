-- Revert: schemas/agentic_db_app_public/tables/goals/columns/completed_at/column


ALTER TABLE agentic_db_app_public.goals 
  DROP COLUMN completed_at RESTRICT;


