-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/alterations/alt0000002773
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chats/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chat_messages 
  DISABLE ROW LEVEL SECURITY;

