-- Verify: schemas/agent_db_encrypted/tables/encrypted_secrets/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_encrypted.encrypted_secrets', 'update', 'authenticated');


