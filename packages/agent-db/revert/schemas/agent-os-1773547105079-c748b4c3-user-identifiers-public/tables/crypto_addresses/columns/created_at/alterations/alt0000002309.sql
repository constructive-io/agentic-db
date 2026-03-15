-- Revert: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/crypto_addresses/columns/created_at/alterations/alt0000002309


ALTER TABLE "agent-os-1773547105079-c748b4c3-user-identifiers-public".crypto_addresses 
  ALTER COLUMN created_at DROP DEFAULT;


