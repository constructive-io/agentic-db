-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chat_messages/columns/embedding/column


GRANT INSERT ON "agent-os-1773546821914-39f1cb9b-app-public".threads TO authenticated;

