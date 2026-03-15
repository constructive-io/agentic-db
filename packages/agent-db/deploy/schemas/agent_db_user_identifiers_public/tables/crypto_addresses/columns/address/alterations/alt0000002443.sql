-- Deploy: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/address/alterations/alt0000002443
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/table
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/address/column


ALTER TABLE "agent_db_user_identifiers_public".crypto_addresses 
  ALTER COLUMN address SET NOT NULL;

