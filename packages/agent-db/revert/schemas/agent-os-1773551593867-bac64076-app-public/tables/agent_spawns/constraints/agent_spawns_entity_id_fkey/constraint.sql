-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/constraints/agent_spawns_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_spawns 
  DROP CONSTRAINT agent_spawns_entity_id_fkey;


