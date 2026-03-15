-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/columns/id/alterations/alt0000001097


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".prompts 
  ALTER COLUMN id DROP NOT NULL;


