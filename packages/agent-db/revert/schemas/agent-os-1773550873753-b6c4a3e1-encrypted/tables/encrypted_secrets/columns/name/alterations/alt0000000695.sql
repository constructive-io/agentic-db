-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/tables/encrypted_secrets/columns/name/alterations/alt0000000695


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-encrypted".encrypted_secrets 
  ALTER COLUMN name DROP NOT NULL;


