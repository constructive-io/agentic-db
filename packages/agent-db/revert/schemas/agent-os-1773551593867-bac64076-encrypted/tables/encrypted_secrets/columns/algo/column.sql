-- Revert: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/columns/algo/column


ALTER TABLE "agent-os-1773551593867-bac64076-encrypted".encrypted_secrets 
  DROP COLUMN algo RESTRICT;


