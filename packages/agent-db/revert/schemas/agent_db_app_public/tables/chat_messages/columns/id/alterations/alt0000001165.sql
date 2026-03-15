-- Revert: schemas/agent_db_app_public/tables/chat_messages/columns/id/alterations/alt0000001165


ALTER TABLE agent_db_app_public.chat_messages 
  ALTER COLUMN id DROP NOT NULL;


