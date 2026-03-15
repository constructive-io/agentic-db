-- Deploy: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/address/alterations/alt0000002444
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/table
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/address/column


ALTER TABLE "agent_db_user_identifiers_public".crypto_addresses 
  ADD CONSTRAINT crypto_addresses_address_chk 
    CHECK (address ~* '^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$');

