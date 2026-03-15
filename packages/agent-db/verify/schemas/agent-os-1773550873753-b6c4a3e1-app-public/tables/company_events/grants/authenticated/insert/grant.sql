-- Verify: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/company_events/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773550873753-b6c4a3e1-app-public.company_events', 'insert', 'authenticated');


