-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_spawns/columns/completed_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_spawns 
  DROP COLUMN completed_at RESTRICT;


