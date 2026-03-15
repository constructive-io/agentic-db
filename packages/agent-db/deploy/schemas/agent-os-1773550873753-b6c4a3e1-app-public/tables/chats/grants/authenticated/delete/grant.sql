-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chats/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chats/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/execution_log/columns/duration_ms/column


GRANT DELETE ON "agent-os-1773550873753-b6c4a3e1-app-public".chats TO authenticated;

