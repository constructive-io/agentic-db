-- Verify: schemas/agentic_db_app_public/tables/calendars/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.calendars', 'insert', 'authenticated');


