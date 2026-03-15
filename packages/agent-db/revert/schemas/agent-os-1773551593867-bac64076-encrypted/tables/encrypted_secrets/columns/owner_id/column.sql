-- Revert: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/columns/owner_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-encrypted".encrypted_secrets 
  DROP COLUMN owner_id RESTRICT;


