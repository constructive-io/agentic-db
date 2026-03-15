-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/crypto_addresses/constraints/crypto_addresses_address_key/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".crypto_addresses 
  DROP CONSTRAINT crypto_addresses_address_key;


