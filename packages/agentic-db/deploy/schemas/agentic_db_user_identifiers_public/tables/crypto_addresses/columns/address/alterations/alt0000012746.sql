-- Deploy: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/columns/address/alterations/alt0000012746
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/columns/address/column


ALTER TABLE agentic_db_user_identifiers_public.crypto_addresses 
  ADD CONSTRAINT crypto_addresses_address_chk 
    CHECK (address ~* '^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$');

