-- Deploy: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/indexes/crypto_addresses_is_primary_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/columns/owner_id/column
-- requires: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/columns/is_primary/column


CREATE UNIQUE INDEX crypto_addresses_is_primary_idx ON agentic_db_user_identifiers_public.crypto_addresses ( is_primary, owner_id ) WHERE is_primary IS TRUE;

