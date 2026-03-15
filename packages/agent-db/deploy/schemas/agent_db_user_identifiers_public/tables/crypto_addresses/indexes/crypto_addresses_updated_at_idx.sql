-- Deploy: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/indexes/crypto_addresses_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/table
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/updated_at/column


CREATE INDEX crypto_addresses_updated_at_idx ON agent_db_user_identifiers_public.crypto_addresses ( updated_at );

