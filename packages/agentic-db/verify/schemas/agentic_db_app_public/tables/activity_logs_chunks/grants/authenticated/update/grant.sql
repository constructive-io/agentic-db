-- Verify: schemas/agentic_db_app_public/tables/activity_logs_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.activity_logs_chunks', 'update', 'authenticated');


