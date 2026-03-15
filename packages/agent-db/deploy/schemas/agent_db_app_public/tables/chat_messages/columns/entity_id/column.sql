-- Deploy: schemas/agent_db_app_public/tables/chat_messages/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chat_messages/table
-- requires: schemas/agent_db_app_public/tables/chats/columns/embedding/column


ALTER TABLE agent_db_app_public.chat_messages 
  ADD COLUMN entity_id uuid;

