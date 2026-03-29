-- Verify: schemas/agentic_db_app_public/tables/events_chunks/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.events_chunks', 'delete', 'authenticated');


