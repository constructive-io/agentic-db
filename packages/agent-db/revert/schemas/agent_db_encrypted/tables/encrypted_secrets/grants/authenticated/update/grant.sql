-- Revert: schemas/agent_db_encrypted/tables/encrypted_secrets/grants/authenticated/update/grant


REVOKE UPDATE ON agent_db_encrypted.encrypted_secrets FROM authenticated;


