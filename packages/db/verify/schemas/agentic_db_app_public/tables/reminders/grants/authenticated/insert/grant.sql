-- Verify: schemas/agentic_db_app_public/tables/reminders/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.reminders', 'insert', 'authenticated');


