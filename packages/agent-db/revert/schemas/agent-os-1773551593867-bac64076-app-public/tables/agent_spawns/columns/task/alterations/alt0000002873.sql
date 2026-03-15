-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/columns/task/alterations/alt0000002873


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_spawns 
  ALTER COLUMN task DROP NOT NULL;


