-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/execution_log/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/execution_log/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/sessions/columns/embedding/column


GRANT UPDATE ON "agent-os-1773550873753-b6c4a3e1-app-public".execution_log TO authenticated;

