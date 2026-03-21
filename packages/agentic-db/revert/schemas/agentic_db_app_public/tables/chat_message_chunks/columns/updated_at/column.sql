-- Revert: schemas/agentic_db_app_public/tables/chat_message_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".chat_message_chunks 
  DROP COLUMN updated_at RESTRICT;


