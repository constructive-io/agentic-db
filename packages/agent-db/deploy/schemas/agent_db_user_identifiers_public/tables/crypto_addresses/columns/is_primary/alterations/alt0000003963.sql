-- Deploy: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/is_primary/alterations/alt0000003963
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/table
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/is_primary/column


ALTER TABLE "agent_db_user_identifiers_public".crypto_addresses 
  ALTER COLUMN is_primary SET NOT NULL;

