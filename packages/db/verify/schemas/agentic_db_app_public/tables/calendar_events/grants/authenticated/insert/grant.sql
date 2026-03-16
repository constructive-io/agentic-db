-- Verify: schemas/agentic_db_app_public/tables/calendar_events/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.calendar_events', 'insert', 'authenticated');


