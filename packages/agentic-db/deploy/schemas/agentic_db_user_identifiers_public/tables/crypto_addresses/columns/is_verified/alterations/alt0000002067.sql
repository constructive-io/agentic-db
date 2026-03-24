-- Deploy: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/columns/is_verified/alterations/alt0000002067
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/columns/is_verified/column


COMMENT ON COLUMN agentic_db_user_identifiers_public.crypto_addresses.is_verified IS 'Whether ownership of this address has been cryptographically verified';

