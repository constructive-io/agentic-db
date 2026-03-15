-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chat_messages/constraints/chat_messages_chat_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chats/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chat_messages/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/constraints/execution_logs_session_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chat_messages 
  ADD CONSTRAINT chat_messages_chat_id_fkey 
    FOREIGN KEY(chat_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-app-public".chats (id) 
    ON DELETE CASCADE;

