-- Revert: schemas/agentic_db_app_public/tables/chat_messages/columns/chat_id/column


ALTER TABLE "agentic_db_app_public".chat_messages 
  DROP COLUMN chat_id RESTRICT;


