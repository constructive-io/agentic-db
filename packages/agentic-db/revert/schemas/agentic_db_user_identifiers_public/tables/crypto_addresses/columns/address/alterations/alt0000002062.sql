-- Revert: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/columns/address/alterations/alt0000002062


ALTER TABLE agentic_db_user_identifiers_public.crypto_addresses 
  ALTER COLUMN address DROP NOT NULL;


