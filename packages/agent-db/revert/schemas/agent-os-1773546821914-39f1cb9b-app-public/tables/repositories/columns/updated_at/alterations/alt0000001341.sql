-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/repositories/columns/updated_at/alterations/alt0000001341


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".repositories 
  ALTER COLUMN updated_at DROP NOT NULL;


