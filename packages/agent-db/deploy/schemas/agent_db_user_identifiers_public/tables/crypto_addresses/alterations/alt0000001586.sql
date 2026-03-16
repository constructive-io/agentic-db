-- Deploy: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/alterations/alt0000001586
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/table


COMMENT ON TABLE "agent_db_user_identifiers_public".crypto_addresses IS E'Cryptocurrency wallet addresses owned by users, with network-specific validation and verification';

