-- Verify: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-user-identifiers-public.emails', 'delete', 'authenticated');


