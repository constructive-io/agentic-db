-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_spawns/columns/entity_id/alterations/alt0000001258


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".agent_spawns 
  ALTER COLUMN entity_id DROP NOT NULL;


