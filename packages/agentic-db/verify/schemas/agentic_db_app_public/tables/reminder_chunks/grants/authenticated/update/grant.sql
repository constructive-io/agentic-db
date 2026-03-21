-- Verify: schemas/agentic_db_app_public/tables/reminder_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.reminder_chunks', 'update', 'authenticated');


