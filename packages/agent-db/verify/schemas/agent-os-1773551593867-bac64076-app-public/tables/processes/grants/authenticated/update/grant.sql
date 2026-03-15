-- Verify: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/grants/authenticated/update/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-app-public.processes', 'update', 'authenticated');


