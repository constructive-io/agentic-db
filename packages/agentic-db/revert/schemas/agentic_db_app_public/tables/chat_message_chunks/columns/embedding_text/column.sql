-- Revert: schemas/agentic_db_app_public/tables/chat_message_chunks/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".chat_message_chunks 
  DROP COLUMN embedding_text RESTRICT;


