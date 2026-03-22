-- Revert: schemas/agentic_db_app_public/tables/codebas_chunks/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.codebas_chunks 
  DROP COLUMN embedding_stale RESTRICT;


