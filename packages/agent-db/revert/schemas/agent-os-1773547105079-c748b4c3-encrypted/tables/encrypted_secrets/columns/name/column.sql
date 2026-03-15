-- Revert: schemas/agent-os-1773547105079-c748b4c3-encrypted/tables/encrypted_secrets/columns/name/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-encrypted".encrypted_secrets 
  DROP COLUMN name RESTRICT;


