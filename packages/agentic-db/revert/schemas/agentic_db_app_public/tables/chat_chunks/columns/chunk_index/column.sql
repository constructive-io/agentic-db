-- Revert: schemas/agentic_db_app_public/tables/chat_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.chat_chunks 
  DROP COLUMN chunk_index RESTRICT;


