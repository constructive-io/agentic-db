-- Deploy: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/columns/is_primary/alterations/alt0000002865
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/columns/is_primary/column


COMMENT ON COLUMN agentic_db_user_identifiers_public.crypto_addresses.is_primary IS E'Whether this is the user''s primary cryptocurrency address';

