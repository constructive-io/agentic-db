-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/columns/name/alterations/alt0000001232


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflows 
  ALTER COLUMN name DROP NOT NULL;


