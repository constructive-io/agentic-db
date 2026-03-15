-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_spawns/columns/id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".agent_spawns 
  DROP COLUMN id RESTRICT;


