-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chats/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chats/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/columns/duration_ms/column


GRANT DELETE ON "agent-os-1773546821914-39f1cb9b-app-public".chats TO authenticated;

