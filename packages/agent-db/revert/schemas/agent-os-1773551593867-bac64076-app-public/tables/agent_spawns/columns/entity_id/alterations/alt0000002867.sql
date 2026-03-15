-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/columns/entity_id/alterations/alt0000002867


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_spawns 
  ALTER COLUMN entity_id DROP NOT NULL;


