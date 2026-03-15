-- Deploy: schemas/agent_db_app_public/tables/chat_messages/constraints/chat_messages_chat_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chats/table
-- requires: schemas/agent_db_app_public/tables/chat_messages/table
-- requires: schemas/agent_db_app_public/tables/execution_log/constraints/execution_logs_session_id_fkey/constraint


ALTER TABLE agent_db_app_public.chat_messages 
  ADD CONSTRAINT chat_messages_chat_id_fkey 
    FOREIGN KEY(chat_id) 
    REFERENCES agent_db_app_public.chats (id) 
    ON DELETE CASCADE;

