-- Revert: schemas/agentic_db_app_public/tables/chat_messages/columns/thread_id/column


ALTER TABLE "agentic_db_app_public".chat_messages 
  DROP COLUMN thread_id RESTRICT;


