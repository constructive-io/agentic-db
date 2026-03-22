-- Revert: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/columns/owner_id/alterations/alt0000001582


ALTER TABLE "agentic_db_user_identifiers_public".crypto_addresses 
  ALTER COLUMN owner_id DROP NOT NULL;


