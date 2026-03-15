-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chat_messages/alterations/alt0000001164
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chat_messages/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chats/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".chat_messages 
  DISABLE ROW LEVEL SECURITY;

