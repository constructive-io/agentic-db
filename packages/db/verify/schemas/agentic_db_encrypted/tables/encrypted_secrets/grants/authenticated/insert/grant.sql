-- Verify: schemas/agentic_db_encrypted/tables/encrypted_secrets/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_encrypted.encrypted_secrets', 'insert', 'authenticated');


