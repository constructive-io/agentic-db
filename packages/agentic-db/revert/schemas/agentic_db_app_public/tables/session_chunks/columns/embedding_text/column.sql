-- Revert: schemas/agentic_db_app_public/tables/session_chunks/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.session_chunks 
  DROP COLUMN embedding_text RESTRICT;


