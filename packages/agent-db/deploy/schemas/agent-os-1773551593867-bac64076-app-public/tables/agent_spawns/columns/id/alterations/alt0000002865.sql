-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/columns/id/alterations/alt0000002865
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_runs/columns/error/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_spawns 
  ALTER COLUMN id SET NOT NULL;

