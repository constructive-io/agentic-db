-- Revert: schemas/agentic_db_app_public/tables/thread_chunks/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.thread_chunks 
  DROP COLUMN embedding_text RESTRICT;


