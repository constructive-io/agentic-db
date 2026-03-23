-- Revert: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/constraints/crypto_addresses_pkey/constraint


ALTER TABLE agentic_db_user_identifiers_public.crypto_addresses 
  DROP CONSTRAINT crypto_addresses_pkey;


