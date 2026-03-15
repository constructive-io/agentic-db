-- Verify: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/phone_numbers/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773547105079-c748b4c3-user-identifiers-public.phone_numbers', 'insert', 'authenticated');


