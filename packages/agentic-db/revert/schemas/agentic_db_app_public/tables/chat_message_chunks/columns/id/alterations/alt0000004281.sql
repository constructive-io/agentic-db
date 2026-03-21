-- Revert: schemas/agentic_db_app_public/tables/chat_message_chunks/columns/id/alterations/alt0000004281


ALTER TABLE agentic_db_app_public.chat_message_chunks 
  ALTER COLUMN id DROP NOT NULL;


