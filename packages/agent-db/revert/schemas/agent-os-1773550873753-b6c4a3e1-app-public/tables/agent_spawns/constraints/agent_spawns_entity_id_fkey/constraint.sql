-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_spawns/constraints/agent_spawns_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_spawns 
  DROP CONSTRAINT agent_spawns_entity_id_fkey;


