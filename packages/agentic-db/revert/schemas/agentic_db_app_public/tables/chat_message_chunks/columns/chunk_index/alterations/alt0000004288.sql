-- Revert: schemas/agentic_db_app_public/tables/chat_message_chunks/columns/chunk_index/alterations/alt0000004288


ALTER TABLE agentic_db_app_public.chat_message_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


