-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chat_messages/columns/thread_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chat_messages/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chat_messages/columns/chat_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".chat_messages 
  ADD COLUMN thread_id uuid;

