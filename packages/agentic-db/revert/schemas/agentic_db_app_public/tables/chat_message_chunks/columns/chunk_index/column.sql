-- Revert: schemas/agentic_db_app_public/tables/chat_message_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.chat_message_chunks 
  DROP COLUMN chunk_index RESTRICT;


