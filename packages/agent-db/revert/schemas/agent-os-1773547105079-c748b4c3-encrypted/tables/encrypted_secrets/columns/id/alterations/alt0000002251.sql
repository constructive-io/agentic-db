-- Revert: schemas/agent-os-1773547105079-c748b4c3-encrypted/tables/encrypted_secrets/columns/id/alterations/alt0000002251


ALTER TABLE "agent-os-1773547105079-c748b4c3-encrypted".encrypted_secrets 
  ALTER COLUMN id DROP NOT NULL;


