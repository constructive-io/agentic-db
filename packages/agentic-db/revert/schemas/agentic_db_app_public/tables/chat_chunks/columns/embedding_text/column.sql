-- Revert: schemas/agentic_db_app_public/tables/chat_chunks/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.chat_chunks 
  DROP COLUMN embedding_text RESTRICT;


