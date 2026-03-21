-- Verify: schemas/agentic_db_app_public/tables/event_links/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.event_links', 'update', 'authenticated');


