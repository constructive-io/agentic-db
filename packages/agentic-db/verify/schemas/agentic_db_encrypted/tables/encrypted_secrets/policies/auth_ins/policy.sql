-- Verify: schemas/agentic_db_encrypted/tables/encrypted_secrets/policies/auth_ins/policy


SELECT verify_policy('auth_ins', 'agentic_db_encrypted.encrypted_secrets');


