-- Revert: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_user_identifiers_public".crypto_addresses FROM authenticated;


