-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/columns/agent_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_spawns 
  DROP COLUMN agent_id RESTRICT;


