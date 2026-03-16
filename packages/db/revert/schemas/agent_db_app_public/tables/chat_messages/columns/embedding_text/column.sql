-- Revert: schemas/agent_db_app_public/tables/chat_messages/columns/embedding_text/column


ALTER TABLE "agent_db_app_public".chat_messages 
  DROP COLUMN embedding_text RESTRICT;


