-- Revert: schemas/agent-os-1773547105079-c748b4c3-encrypted/tables/encrypted_secrets/columns/algo/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-encrypted".encrypted_secrets 
  DROP COLUMN algo RESTRICT;


