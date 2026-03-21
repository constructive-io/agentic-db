-- Verify: schemas/agentic_db_app_public/tables/reminders/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.reminders', 'select', 'authenticated');


