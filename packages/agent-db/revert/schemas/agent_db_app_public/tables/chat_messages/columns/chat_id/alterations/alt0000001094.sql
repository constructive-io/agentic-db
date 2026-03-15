-- Revert: schemas/agent_db_app_public/tables/chat_messages/columns/chat_id/alterations/alt0000001094


ALTER TABLE agent_db_app_public.chat_messages 
  ALTER COLUMN chat_id DROP NOT NULL;


