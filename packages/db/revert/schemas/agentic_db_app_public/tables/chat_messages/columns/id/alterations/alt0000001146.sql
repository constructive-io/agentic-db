-- Revert: schemas/agentic_db_app_public/tables/chat_messages/columns/id/alterations/alt0000001146


ALTER TABLE "agentic_db_app_public".chat_messages 
  ALTER COLUMN id DROP NOT NULL;


