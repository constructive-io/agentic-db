-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/processes/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/processes/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/blueprints/columns/embedding/column


GRANT INSERT ON "agent-os-1773546821914-39f1cb9b-app-public".processes TO authenticated;

