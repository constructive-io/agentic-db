-- Revert: schemas/agentic_db_app_public/tables/chat_message_chunks/constraints/chat_message_chunks_chat_message_id_fkey/constraint


ALTER TABLE agentic_db_app_public.chat_message_chunks 
  DROP CONSTRAINT chat_message_chunks_chat_message_id_fkey;


