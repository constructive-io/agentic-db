-- Deploy: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/table


GRANT DELETE ON "agent_db_user_identifiers_public".crypto_addresses TO authenticated;

