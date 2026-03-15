-- Deploy: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/created_at/alterations/alt0000003966
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/table
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/created_at/column


ALTER TABLE "agent_db_user_identifiers_public".crypto_addresses 
  ALTER COLUMN created_at SET DEFAULT now();

