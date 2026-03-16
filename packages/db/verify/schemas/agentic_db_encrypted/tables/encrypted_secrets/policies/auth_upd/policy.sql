-- Verify: schemas/agentic_db_encrypted/tables/encrypted_secrets/policies/auth_upd/policy


SELECT verify_policy('auth_upd', 'agentic_db_encrypted.encrypted_secrets');


