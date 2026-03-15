-- Verify: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/tables/encrypted_secrets/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773550873753-b6c4a3e1-encrypted.encrypted_secrets', 'insert', 'authenticated');


