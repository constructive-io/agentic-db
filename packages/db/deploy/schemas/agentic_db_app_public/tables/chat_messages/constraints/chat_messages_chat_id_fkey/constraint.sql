-- Deploy: schemas/agentic_db_app_public/tables/chat_messages/constraints/chat_messages_chat_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chats/table
-- requires: schemas/agentic_db_app_public/tables/chat_messages/table
-- requires: schemas/agentic_db_app_public/tables/execution_log/constraints/execution_logs_session_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".chat_messages 
  ADD CONSTRAINT chat_messages_chat_id_fkey 
    FOREIGN KEY(chat_id) 
    REFERENCES "agentic_db_app_public".chats (id) 
    ON DELETE CASCADE;

