-- Revert: schemas/agentic_db_app_public/tables/chat_messages/columns/updated_at/alterations/alt0000001151


ALTER TABLE "agentic_db_app_public".chat_messages 
  ALTER COLUMN updated_at DROP NOT NULL;


