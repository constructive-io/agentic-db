-- Revert: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/columns/name/alterations/alt0000002304


ALTER TABLE "agent-os-1773551593867-bac64076-encrypted".encrypted_secrets 
  ALTER COLUMN name DROP NOT NULL;


