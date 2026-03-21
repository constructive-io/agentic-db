-- Verify: schemas/agentic_db_app_public/tables/calendar_event_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.calendar_event_chunks', 'select', 'authenticated');


