-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/columns/name/alterations/alt0000001136


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".agents 
  ALTER COLUMN name DROP NOT NULL;


