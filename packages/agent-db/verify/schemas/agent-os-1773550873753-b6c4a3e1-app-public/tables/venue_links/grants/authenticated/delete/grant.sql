-- Verify: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venue_links/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773550873753-b6c4a3e1-app-public.venue_links', 'delete', 'authenticated');


