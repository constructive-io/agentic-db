-- Verify: schemas/agent-os-1773551593867-bac64076-app-public/tables/companies/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-app-public.companies', 'delete', 'authenticated');


