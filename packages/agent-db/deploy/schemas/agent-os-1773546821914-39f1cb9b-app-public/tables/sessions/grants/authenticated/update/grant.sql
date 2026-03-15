-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/columns/embedding/column


GRANT UPDATE ON "agent-os-1773546821914-39f1cb9b-app-public".sessions TO authenticated;

