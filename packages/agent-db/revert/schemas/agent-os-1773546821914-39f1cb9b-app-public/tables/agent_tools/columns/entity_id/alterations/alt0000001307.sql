-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_tools/columns/entity_id/alterations/alt0000001307


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".agent_tools 
  ALTER COLUMN entity_id DROP NOT NULL;


