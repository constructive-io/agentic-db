-- Deploy: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/address/alterations/alt0000000741
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/columns/address/column


COMMENT ON COLUMN agent_db_user_identifiers_public.crypto_addresses.address IS E'The cryptocurrency wallet address, validated against network-specific patterns';

