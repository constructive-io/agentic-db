-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chat_messages/alterations/alt0000002725
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chat_messages/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chats/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".chat_messages 
  DISABLE ROW LEVEL SECURITY;

