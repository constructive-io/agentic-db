-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/columns/name/alterations/alt0000001104


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".prompts 
  ALTER COLUMN name DROP NOT NULL;


