-- Verify: schemas/agentic_db_app_public/tables/calendar_attendees/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.calendar_attendees', 'insert', 'authenticated');


