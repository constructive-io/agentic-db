-- Deploy: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/columns/id/alterations/alt0000000736
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/columns/id/column



ALTER TABLE "agentic_db_user_identifiers_public".crypto_addresses 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

