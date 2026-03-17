-- Revert: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/columns/updated_at/alterations/alt0000000749


ALTER TABLE "agentic_db_user_identifiers_public".crypto_addresses 
  ALTER COLUMN updated_at DROP DEFAULT;


