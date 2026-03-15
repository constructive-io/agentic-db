-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_spawns/columns/task/alterations/alt0000001264


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_spawns 
  ALTER COLUMN task DROP NOT NULL;


