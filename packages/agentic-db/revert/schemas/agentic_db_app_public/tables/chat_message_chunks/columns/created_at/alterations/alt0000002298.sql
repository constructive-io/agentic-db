-- Revert: schemas/agentic_db_app_public/tables/chat_message_chunks/columns/created_at/alterations/alt0000002298


ALTER TABLE "agentic_db_app_public".chat_message_chunks 
  ALTER COLUMN created_at DROP NOT NULL;


