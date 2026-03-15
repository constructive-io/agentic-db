-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/columns/name/alterations/alt0000001081


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skills 
  ALTER COLUMN name DROP NOT NULL;


