-- Revert: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/updated_at/alterations/alt0000002453


ALTER TABLE "agent_db_user_identifiers_public".crypto_addresses 
  ALTER COLUMN updated_at DROP DEFAULT;


