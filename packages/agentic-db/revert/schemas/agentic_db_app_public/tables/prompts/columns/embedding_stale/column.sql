-- Revert: schemas/agentic_db_app_public/tables/prompts/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.prompts 
  DROP COLUMN embedding_stale RESTRICT;


