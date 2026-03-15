-- Deploy: schemas/agent_db_app_public/tables/chat_messages/columns/chat_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chat_messages/table
-- requires: schemas/agent_db_app_public/tables/chat_messages/columns/updated_at/alterations/alt0000001171


ALTER TABLE agent_db_app_public.chat_messages 
  ADD COLUMN chat_id uuid;

