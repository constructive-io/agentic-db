-- Revert: schemas/agentic_db_app_public/tables/codebases/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.codebases 
  DROP COLUMN embedding_stale RESTRICT;


