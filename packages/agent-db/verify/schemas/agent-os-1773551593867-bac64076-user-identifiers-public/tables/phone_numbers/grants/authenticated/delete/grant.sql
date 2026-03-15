-- Verify: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/phone_numbers/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-user-identifiers-public.phone_numbers', 'delete', 'authenticated');


