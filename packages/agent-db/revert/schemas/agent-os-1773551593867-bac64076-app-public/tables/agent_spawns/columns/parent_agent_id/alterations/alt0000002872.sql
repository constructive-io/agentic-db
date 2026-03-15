-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/columns/parent_agent_id/alterations/alt0000002872


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_spawns 
  ALTER COLUMN parent_agent_id DROP NOT NULL;


