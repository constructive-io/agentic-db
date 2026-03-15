-- Deploy: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/constraints/crypto_addresses_address_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/table


ALTER TABLE agent_db_user_identifiers_public.crypto_addresses 
  ADD CONSTRAINT crypto_addresses_address_key 
    UNIQUE (address);

