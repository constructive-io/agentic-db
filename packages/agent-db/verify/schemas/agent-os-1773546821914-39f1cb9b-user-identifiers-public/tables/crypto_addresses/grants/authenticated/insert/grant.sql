-- Verify: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/crypto_addresses/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-user-identifiers-public.crypto_addresses', 'insert', 'authenticated');


