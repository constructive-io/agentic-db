-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/crypto_addresses/constraints/crypto_addresses_owner_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".crypto_addresses 
  DROP CONSTRAINT crypto_addresses_owner_id_fkey;


