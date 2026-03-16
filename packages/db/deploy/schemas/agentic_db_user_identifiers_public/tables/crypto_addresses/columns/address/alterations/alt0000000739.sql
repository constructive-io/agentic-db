-- Deploy: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/columns/address/alterations/alt0000000739
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/columns/address/column


ALTER TABLE "agentic_db_user_identifiers_public".crypto_addresses 
  ALTER COLUMN address SET NOT NULL;

