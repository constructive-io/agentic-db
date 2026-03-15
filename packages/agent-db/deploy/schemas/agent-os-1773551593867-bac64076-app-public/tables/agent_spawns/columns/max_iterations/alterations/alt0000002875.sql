-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/columns/max_iterations/alterations/alt0000002875
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/columns/result/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/columns/max_iterations/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_spawns 
    ALTER COLUMN max_iterations SET DEFAULT 15;

