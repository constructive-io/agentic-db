-- Verify: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/indexes/crypto_addresses_created_at_idx


SELECT verify_index('agent_db_user_identifiers_public.crypto_addresses', 'crypto_addresses_created_at_idx');


