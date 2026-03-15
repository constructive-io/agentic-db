-- Deploy: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/is_verified/alterations/alt0000000744
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/is_verified/column


COMMENT ON COLUMN agent_db_user_identifiers_public.crypto_addresses.is_verified IS 'Whether ownership of this address has been cryptographically verified';

