-- Deploy: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/table


GRANT INSERT (address, owner_id, is_primary) ON "agent_db_user_identifiers_public".crypto_addresses TO authenticated;

