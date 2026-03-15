-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/projects/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/projects/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/constraints/agent_spawns_agent_id_fkey/constraint


GRANT UPDATE ON "agent-os-1773551593867-bac64076-app-public".projects TO authenticated;

