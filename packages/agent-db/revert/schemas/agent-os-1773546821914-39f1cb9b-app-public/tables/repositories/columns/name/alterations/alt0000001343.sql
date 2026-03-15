-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/repositories/columns/name/alterations/alt0000001343


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".repositories 
  ALTER COLUMN name DROP NOT NULL;


