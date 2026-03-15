-- Revert: schemas/agent-os-1773546821914-39f1cb9b-encrypted/tables/encrypted_secrets/columns/owner_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-encrypted".encrypted_secrets 
  DROP COLUMN owner_id RESTRICT;


