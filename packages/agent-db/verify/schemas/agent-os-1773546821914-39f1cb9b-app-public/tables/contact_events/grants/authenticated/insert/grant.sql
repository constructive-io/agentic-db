-- Verify: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_events/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-app-public.contact_events', 'insert', 'authenticated');


