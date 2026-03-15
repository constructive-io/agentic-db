-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chat_messages/constraints/chat_messages_thread_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/threads/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chat_messages/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chat_messages/constraints/chat_messages_chat_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".chat_messages 
  ADD CONSTRAINT chat_messages_thread_id_fkey 
    FOREIGN KEY(thread_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-app-public".threads (id) 
    ON DELETE SET NULL;

