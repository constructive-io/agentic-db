-- Revert: schemas/agentic_db_app_public/tables/goals/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.goals 
  DROP COLUMN embedding_stale RESTRICT;


