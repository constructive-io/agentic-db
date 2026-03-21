-- Revert: schemas/agentic_db_app_public/tables/chat_messages/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".chat_messages 
  DROP COLUMN updated_at RESTRICT;


