-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chat_messages/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chat_messages/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chats/columns/embedding/column


GRANT UPDATE ON "agent-os-1773546821914-39f1cb9b-app-public".chat_messages TO authenticated;

