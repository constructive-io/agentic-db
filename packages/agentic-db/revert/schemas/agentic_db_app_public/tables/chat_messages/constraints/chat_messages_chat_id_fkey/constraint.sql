-- Revert: schemas/agentic_db_app_public/tables/chat_messages/constraints/chat_messages_chat_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".chat_messages 
  DROP CONSTRAINT chat_messages_chat_id_fkey;


