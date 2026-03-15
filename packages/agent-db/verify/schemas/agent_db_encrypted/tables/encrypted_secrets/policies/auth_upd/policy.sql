-- Verify: schemas/agent_db_encrypted/tables/encrypted_secrets/policies/auth_upd/policy


SELECT verify_policy('auth_upd', 'agent_db_encrypted.encrypted_secrets');


