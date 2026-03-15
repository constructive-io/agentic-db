-- Verify: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/policies/auth_sel/policy


SELECT verify_policy('auth_sel', 'agent_db_user_identifiers_public.crypto_addresses');


