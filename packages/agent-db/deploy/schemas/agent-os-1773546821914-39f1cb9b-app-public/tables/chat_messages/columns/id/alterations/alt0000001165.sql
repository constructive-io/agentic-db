-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chat_messages/columns/id/alterations/alt0000001165
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chat_messages/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chats/columns/embedding/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chat_messages/columns/id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chat_messages 
  ALTER COLUMN id SET NOT NULL;

