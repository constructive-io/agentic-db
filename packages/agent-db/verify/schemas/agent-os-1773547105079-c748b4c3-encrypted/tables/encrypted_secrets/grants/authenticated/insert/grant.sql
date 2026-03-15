-- Verify: schemas/agent-os-1773547105079-c748b4c3-encrypted/tables/encrypted_secrets/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773547105079-c748b4c3-encrypted.encrypted_secrets', 'insert', 'authenticated');


