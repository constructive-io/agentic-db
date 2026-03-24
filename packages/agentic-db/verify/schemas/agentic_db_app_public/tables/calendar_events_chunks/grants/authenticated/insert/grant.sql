-- Verify: schemas/agentic_db_app_public/tables/calendar_events_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.calendar_events_chunks', 'insert', 'authenticated');


