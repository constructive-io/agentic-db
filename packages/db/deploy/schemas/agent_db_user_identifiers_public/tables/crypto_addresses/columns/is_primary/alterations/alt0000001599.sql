-- Deploy: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/is_primary/alterations/alt0000001599
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/is_primary/column


COMMENT ON COLUMN "agent_db_user_identifiers_public".crypto_addresses.is_primary IS E'Whether this is the user''s primary cryptocurrency address';

