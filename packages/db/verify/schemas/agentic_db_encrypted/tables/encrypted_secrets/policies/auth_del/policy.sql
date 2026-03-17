-- Verify: schemas/agentic_db_encrypted/tables/encrypted_secrets/policies/auth_del/policy


SELECT verify_policy('auth_del', 'agentic_db_encrypted.encrypted_secrets');


