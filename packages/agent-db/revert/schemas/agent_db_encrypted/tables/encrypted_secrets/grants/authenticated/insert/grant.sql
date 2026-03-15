-- Revert: schemas/agent_db_encrypted/tables/encrypted_secrets/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_encrypted.encrypted_secrets FROM authenticated;


