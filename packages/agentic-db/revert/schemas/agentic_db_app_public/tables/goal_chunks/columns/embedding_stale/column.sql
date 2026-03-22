-- Revert: schemas/agentic_db_app_public/tables/goal_chunks/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.goal_chunks 
  DROP COLUMN embedding_stale RESTRICT;


