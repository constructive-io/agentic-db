-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chat_messages/columns/id/alterations/alt0000002727
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chat_messages/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chats/columns/embedding/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chat_messages/columns/id/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".chat_messages 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

