-- Revert: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/columns/is_verified/alterations/alt0000000742


ALTER TABLE "agentic_db_user_identifiers_public".crypto_addresses 
  ALTER COLUMN is_verified DROP NOT NULL;


