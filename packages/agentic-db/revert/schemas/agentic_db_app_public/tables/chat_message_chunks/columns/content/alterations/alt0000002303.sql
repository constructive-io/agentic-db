-- Revert: schemas/agentic_db_app_public/tables/chat_message_chunks/columns/content/alterations/alt0000002303


ALTER TABLE "agentic_db_app_public".chat_message_chunks 
  ALTER COLUMN content DROP NOT NULL;


