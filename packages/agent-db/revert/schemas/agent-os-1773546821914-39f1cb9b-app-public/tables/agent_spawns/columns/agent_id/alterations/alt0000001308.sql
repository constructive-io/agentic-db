-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_spawns/columns/agent_id/alterations/alt0000001308


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".agent_spawns 
  ALTER COLUMN agent_id DROP NOT NULL;


