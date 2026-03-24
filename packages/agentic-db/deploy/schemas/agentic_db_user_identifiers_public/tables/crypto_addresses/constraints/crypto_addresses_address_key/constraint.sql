-- Deploy: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/constraints/crypto_addresses_address_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/table


ALTER TABLE "agentic_db_user_identifiers_public".crypto_addresses 
  ADD CONSTRAINT crypto_addresses_address_key 
    UNIQUE (address);

