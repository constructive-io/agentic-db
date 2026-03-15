-- Deploy: schemas/agent_db_app_public/tables/chat_messages/columns/thread_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chat_messages/table
-- requires: schemas/agent_db_app_public/tables/chat_messages/columns/chat_id/column


ALTER TABLE agent_db_app_public.chat_messages 
  ADD COLUMN thread_id uuid;

