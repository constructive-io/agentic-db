-- Verify: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/grants/authenticated/update/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-app-public.calendar_events', 'update', 'authenticated');


