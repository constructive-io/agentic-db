-- Revert: schemas/agent-os-1773546821914-39f1cb9b-encrypted/tables/encrypted_secrets/columns/id/alterations/alt0000000690


ALTER TABLE "agent-os-1773546821914-39f1cb9b-encrypted".encrypted_secrets 
  ALTER COLUMN id DROP NOT NULL;


