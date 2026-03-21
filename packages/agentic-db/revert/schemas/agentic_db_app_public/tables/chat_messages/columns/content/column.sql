-- Revert: schemas/agentic_db_app_public/tables/chat_messages/columns/content/column


ALTER TABLE "agentic_db_app_public".chat_messages 
  DROP COLUMN content RESTRICT;


