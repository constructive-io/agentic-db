-- Verify: schemas/agentic_db_app_public/tables/calendars/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.calendars', 'delete', 'authenticated');


