-- Deploy: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/constraints/crypto_addresses_owner_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/table


ALTER TABLE agent_db_user_identifiers_public.crypto_addresses 
  ADD CONSTRAINT crypto_addresses_owner_id_fkey 
    FOREIGN KEY(owner_id) 
    REFERENCES agent_db_users_public.users (id) 
    ON DELETE CASCADE;

