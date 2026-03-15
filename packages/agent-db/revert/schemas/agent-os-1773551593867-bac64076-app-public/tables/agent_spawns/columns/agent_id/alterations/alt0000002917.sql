-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/columns/agent_id/alterations/alt0000002917


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_spawns 
  ALTER COLUMN agent_id DROP NOT NULL;


