-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/projects/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/projects/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_spawns/constraints/agent_spawns_agent_id_fkey/constraint


GRANT INSERT ON "agent-os-1773546821914-39f1cb9b-app-public".projects TO authenticated;

