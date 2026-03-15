-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/columns/entity_id/alterations/alt0000001099


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".prompts 
  ALTER COLUMN entity_id DROP NOT NULL;


