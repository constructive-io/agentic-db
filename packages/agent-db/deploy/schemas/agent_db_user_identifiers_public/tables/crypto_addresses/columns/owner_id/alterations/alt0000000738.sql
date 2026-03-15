-- Deploy: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/owner_id/alterations/alt0000000738
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/table
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/owner_id/column



ALTER TABLE agent_db_user_identifiers_public.crypto_addresses 
    ALTER COLUMN owner_id SET DEFAULT jwt_public.current_user_id();

