-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_spawns/columns/parent_agent_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".agent_spawns 
  DROP COLUMN parent_agent_id RESTRICT;


