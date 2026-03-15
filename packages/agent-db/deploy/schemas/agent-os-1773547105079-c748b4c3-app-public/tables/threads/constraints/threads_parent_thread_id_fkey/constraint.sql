-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/threads/constraints/threads_parent_thread_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/threads/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chat_messages/constraints/chat_messages_thread_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".threads 
  ADD CONSTRAINT threads_parent_thread_id_fkey 
    FOREIGN KEY(parent_thread_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-app-public".threads (id) 
    ON DELETE SET NULL;

