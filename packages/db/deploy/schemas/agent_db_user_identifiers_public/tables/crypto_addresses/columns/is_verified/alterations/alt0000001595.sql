-- Deploy: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/is_verified/alterations/alt0000001595
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/table
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/is_verified/column



ALTER TABLE "agent_db_user_identifiers_public".crypto_addresses 
    ALTER COLUMN is_verified SET DEFAULT false;

