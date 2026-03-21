-- Revert: schemas/agentic_db_app_public/tables/chat_messages/columns/embedding/column


ALTER TABLE agentic_db_app_public.chat_messages 
  DROP COLUMN embedding RESTRICT;


