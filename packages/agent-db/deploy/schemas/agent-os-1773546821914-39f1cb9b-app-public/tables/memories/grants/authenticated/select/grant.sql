-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/rules/columns/trigger_concept/column


GRANT SELECT ON "agent-os-1773546821914-39f1cb9b-app-public".memories TO authenticated;

