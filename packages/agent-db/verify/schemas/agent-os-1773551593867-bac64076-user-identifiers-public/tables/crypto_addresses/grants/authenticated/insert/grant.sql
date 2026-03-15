-- Verify: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/crypto_addresses/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-user-identifiers-public.crypto_addresses', 'insert', 'authenticated');


