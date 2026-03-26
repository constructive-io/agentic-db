-- Verify: schemas/agentic_db_app_public/tables/activity_logs/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.activity_logs', 'update', 'authenticated');


