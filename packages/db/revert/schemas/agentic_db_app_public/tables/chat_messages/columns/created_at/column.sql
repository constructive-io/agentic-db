-- Revert: schemas/agentic_db_app_public/tables/chat_messages/columns/created_at/column


ALTER TABLE "agentic_db_app_public".chat_messages 
  DROP COLUMN created_at RESTRICT;


