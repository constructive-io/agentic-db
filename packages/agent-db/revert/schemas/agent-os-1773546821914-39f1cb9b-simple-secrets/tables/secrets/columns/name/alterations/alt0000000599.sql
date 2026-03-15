-- Revert: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/tables/secrets/columns/name/alterations/alt0000000599


ALTER TABLE "agent-os-1773546821914-39f1cb9b-simple-secrets".secrets 
  ALTER COLUMN name DROP NOT NULL;


