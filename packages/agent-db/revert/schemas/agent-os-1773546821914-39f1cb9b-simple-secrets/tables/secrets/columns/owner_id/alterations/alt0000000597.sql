-- Revert: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/tables/secrets/columns/owner_id/alterations/alt0000000597


ALTER TABLE "agent-os-1773546821914-39f1cb9b-simple-secrets".secrets 
  ALTER COLUMN owner_id DROP NOT NULL;


