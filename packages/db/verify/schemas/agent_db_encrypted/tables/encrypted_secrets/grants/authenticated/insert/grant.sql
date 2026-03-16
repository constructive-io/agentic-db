-- Verify: schemas/agent_db_encrypted/tables/encrypted_secrets/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_encrypted.encrypted_secrets', 'insert', 'authenticated');


