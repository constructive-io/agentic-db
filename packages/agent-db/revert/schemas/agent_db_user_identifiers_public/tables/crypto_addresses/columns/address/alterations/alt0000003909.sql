-- Revert: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/address/alterations/alt0000003909


ALTER TABLE "agent_db_user_identifiers_public".crypto_addresses 
  ALTER COLUMN address DROP NOT NULL;


