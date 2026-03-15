-- Revert: schemas/agent-os-1773546821914-39f1cb9b-encrypted/tables/encrypted_secrets/columns/owner_id/alterations/alt0000000693


ALTER TABLE "agent-os-1773546821914-39f1cb9b-encrypted".encrypted_secrets 
  ALTER COLUMN owner_id DROP NOT NULL;


