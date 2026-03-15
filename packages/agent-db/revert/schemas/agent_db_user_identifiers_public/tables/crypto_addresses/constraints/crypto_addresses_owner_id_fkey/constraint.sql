-- Revert: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/constraints/crypto_addresses_owner_id_fkey/constraint


ALTER TABLE "agent_db_user_identifiers_public".crypto_addresses 
  DROP CONSTRAINT crypto_addresses_owner_id_fkey;


