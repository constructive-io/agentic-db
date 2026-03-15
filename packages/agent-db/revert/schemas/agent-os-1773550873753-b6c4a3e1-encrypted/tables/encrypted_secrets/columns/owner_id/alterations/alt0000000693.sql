-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/tables/encrypted_secrets/columns/owner_id/alterations/alt0000000693


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-encrypted".encrypted_secrets 
  ALTER COLUMN owner_id DROP NOT NULL;


