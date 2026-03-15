-- Revert: schemas/agent-os-1773546821914-39f1cb9b-encrypted/tables/encrypted_secrets/columns/name/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-encrypted".encrypted_secrets 
  DROP COLUMN name RESTRICT;


