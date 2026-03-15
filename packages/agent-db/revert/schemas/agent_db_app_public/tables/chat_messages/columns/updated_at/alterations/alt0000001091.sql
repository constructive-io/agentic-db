-- Revert: schemas/agent_db_app_public/tables/chat_messages/columns/updated_at/alterations/alt0000001091


ALTER TABLE agent_db_app_public.chat_messages 
  ALTER COLUMN updated_at DROP NOT NULL;


