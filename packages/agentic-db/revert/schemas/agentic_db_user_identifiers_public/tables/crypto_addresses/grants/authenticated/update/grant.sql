-- Revert: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/grants/authenticated/update/grant


REVOKE UPDATE (address, owner_id, is_primary) ON agentic_db_user_identifiers_public.crypto_addresses FROM authenticated;


