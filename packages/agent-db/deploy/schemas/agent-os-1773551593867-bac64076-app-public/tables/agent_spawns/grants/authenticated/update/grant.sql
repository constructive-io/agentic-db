-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_runs/columns/error/column


GRANT UPDATE ON "agent-os-1773551593867-bac64076-app-public".agent_spawns TO authenticated;

