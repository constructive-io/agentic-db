-- Deploy: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/columns/is_verified/alterations/alt0000002454
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/columns/is_verified/column


ALTER TABLE agentic_db_user_identifiers_public.crypto_addresses 
  ALTER COLUMN is_verified SET NOT NULL;

