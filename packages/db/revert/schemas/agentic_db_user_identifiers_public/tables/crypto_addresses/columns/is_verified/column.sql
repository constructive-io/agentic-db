-- Revert: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/columns/is_verified/column


ALTER TABLE "agentic_db_user_identifiers_public".crypto_addresses 
  DROP COLUMN is_verified RESTRICT;


