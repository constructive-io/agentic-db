-- Revert: schemas/agentic_db_app_public/tables/messages_chunks/columns/message_id/alterations/alt0000005718


ALTER TABLE agentic_db_app_public.messages_chunks 
  ALTER COLUMN message_id DROP NOT NULL;


