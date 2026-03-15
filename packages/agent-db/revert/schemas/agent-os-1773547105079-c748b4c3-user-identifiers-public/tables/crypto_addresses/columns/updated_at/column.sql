-- Revert: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/crypto_addresses/columns/updated_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-user-identifiers-public".crypto_addresses 
  DROP COLUMN updated_at RESTRICT;


