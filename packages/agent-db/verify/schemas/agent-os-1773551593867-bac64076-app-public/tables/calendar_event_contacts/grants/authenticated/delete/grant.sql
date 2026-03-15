-- Verify: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_event_contacts/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-app-public.calendar_event_contacts', 'delete', 'authenticated');


