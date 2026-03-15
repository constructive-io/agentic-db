-- Verify: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_links/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-app-public.event_links', 'delete', 'authenticated');


