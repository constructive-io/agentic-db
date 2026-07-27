-- Revert: schemas/agentic_db_app_public/tables/goals/columns/embedding_updated_at/column


ALTER TABLE agentic_db_app_public.goals 
  DROP COLUMN embedding_updated_at RESTRICT;


