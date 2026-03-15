-- Revert: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/created_at/alterations/alt0000003966


ALTER TABLE "agent_db_user_identifiers_public".crypto_addresses 
  ALTER COLUMN created_at DROP DEFAULT;


