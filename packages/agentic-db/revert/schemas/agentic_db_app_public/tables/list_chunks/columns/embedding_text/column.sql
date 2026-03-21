-- Revert: schemas/agentic_db_app_public/tables/list_chunks/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.list_chunks 
  DROP COLUMN embedding_text RESTRICT;


