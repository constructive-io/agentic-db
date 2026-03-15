-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/projects/columns/id/alterations/alt0000002920
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/projects/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/projects/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/constraints/agent_spawns_agent_id_fkey/constraint



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".projects 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

