-- Revert: schemas/agent-os-1773546821914-39f1cb9b-encrypted/tables/encrypted_secrets/columns/name/alterations/alt0000000695


ALTER TABLE "agent-os-1773546821914-39f1cb9b-encrypted".encrypted_secrets 
  ALTER COLUMN name DROP NOT NULL;


