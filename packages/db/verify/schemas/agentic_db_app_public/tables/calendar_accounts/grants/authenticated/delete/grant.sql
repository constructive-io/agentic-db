-- Verify: schemas/agentic_db_app_public/tables/calendar_accounts/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.calendar_accounts', 'delete', 'authenticated');


