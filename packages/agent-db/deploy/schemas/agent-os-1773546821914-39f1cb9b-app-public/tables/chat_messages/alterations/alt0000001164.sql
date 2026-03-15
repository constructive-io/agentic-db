-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chat_messages/alterations/alt0000001164
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chat_messages/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chats/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chat_messages 
  DISABLE ROW LEVEL SECURITY;

