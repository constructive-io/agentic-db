-- Revert: schemas/agentic_db_app_public/tables/codebases/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.codebases 
  DROP COLUMN embedding_text RESTRICT;


