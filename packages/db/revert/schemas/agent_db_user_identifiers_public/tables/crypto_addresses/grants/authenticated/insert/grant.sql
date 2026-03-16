-- Revert: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/grants/authenticated/insert/grant


REVOKE INSERT (address, owner_id, is_primary) ON "agent_db_user_identifiers_public".crypto_addresses FROM authenticated;


