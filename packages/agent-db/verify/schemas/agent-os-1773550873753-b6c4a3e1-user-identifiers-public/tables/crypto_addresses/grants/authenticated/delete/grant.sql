-- Verify: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/crypto_addresses/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773550873753-b6c4a3e1-user-identifiers-public.crypto_addresses', 'delete', 'authenticated');


