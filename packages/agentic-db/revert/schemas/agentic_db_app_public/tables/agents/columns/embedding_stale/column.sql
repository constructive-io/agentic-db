-- Revert: schemas/agentic_db_app_public/tables/agents/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.agents 
  DROP COLUMN embedding_stale RESTRICT;


