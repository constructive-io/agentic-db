-- Deploy: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/constraints/crypto_addresses_owner_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/table


ALTER TABLE agentic_db_user_identifiers_public.crypto_addresses 
  ADD CONSTRAINT crypto_addresses_owner_id_fkey 
    FOREIGN KEY(owner_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;

