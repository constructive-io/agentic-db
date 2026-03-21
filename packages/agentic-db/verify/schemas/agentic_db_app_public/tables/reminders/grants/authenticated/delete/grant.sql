-- Verify: schemas/agentic_db_app_public/tables/reminders/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.reminders', 'delete', 'authenticated');


