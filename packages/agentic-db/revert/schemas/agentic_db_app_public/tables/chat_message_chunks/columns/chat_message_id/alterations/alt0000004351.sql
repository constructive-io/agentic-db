-- Revert: schemas/agentic_db_app_public/tables/chat_message_chunks/columns/chat_message_id/alterations/alt0000004351


ALTER TABLE agentic_db_app_public.chat_message_chunks 
  ALTER COLUMN chat_message_id DROP NOT NULL;


