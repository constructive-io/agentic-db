-- Revert: schemas/agentic_db_app_public/tables/repository_chunks/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.repository_chunks 
  DROP COLUMN embedding_text RESTRICT;


