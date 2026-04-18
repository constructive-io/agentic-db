-- Revert: schemas/agentic_db_app_public/tables/messages/columns/conversation_id/alterations/alt0000001084


ALTER TABLE agentic_db_app_public.messages 
  ALTER COLUMN conversation_id DROP NOT NULL;


