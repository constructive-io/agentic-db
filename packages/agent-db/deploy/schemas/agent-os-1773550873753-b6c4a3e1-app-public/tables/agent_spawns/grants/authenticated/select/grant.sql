-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_spawns/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_spawns/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_runs/columns/error/column


GRANT SELECT ON "agent-os-1773550873753-b6c4a3e1-app-public".agent_spawns TO authenticated;

