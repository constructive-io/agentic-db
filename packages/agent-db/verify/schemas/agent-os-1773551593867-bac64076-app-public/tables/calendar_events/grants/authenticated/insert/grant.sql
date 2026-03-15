-- Verify: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-app-public.calendar_events', 'insert', 'authenticated');


