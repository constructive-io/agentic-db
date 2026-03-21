-- Revert: schemas/agentic_db_app_public/tables/chat_message_chunks/columns/chat_message_id/column


ALTER TABLE agentic_db_app_public.chat_message_chunks 
  DROP COLUMN chat_message_id RESTRICT;


