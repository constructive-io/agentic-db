-- Revert: schemas/agent-os-1773547105079-c748b4c3-encrypted/tables/encrypted_secrets/columns/name/alterations/alt0000002256


ALTER TABLE "agent-os-1773547105079-c748b4c3-encrypted".encrypted_secrets 
  ALTER COLUMN name DROP NOT NULL;


