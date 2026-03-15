-- Revert: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/columns/owner_id/alterations/alt0000002302


ALTER TABLE "agent-os-1773551593867-bac64076-encrypted".encrypted_secrets 
  ALTER COLUMN owner_id DROP NOT NULL;


