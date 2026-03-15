-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/columns/embedding/column


GRANT DELETE ON "agent-os-1773546821914-39f1cb9b-app-public".execution_log TO authenticated;

