-- Verify: schemas/agent-os-1773546821914-39f1cb9b-encrypted/tables/encrypted_secrets/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-encrypted.encrypted_secrets', 'delete', 'authenticated');


