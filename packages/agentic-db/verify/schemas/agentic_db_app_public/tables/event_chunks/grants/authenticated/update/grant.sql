-- Verify: schemas/agentic_db_app_public/tables/event_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.event_chunks', 'update', 'authenticated');


