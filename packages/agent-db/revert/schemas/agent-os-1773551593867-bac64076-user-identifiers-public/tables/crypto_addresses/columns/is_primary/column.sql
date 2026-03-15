-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/crypto_addresses/columns/is_primary/column


ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".crypto_addresses 
  DROP COLUMN is_primary RESTRICT;


