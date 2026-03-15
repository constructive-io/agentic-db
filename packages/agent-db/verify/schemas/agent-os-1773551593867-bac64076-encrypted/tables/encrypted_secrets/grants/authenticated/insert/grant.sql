-- Verify: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-encrypted.encrypted_secrets', 'insert', 'authenticated');


