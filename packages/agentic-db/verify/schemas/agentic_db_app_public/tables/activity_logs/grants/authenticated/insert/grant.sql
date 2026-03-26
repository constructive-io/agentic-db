-- Verify: schemas/agentic_db_app_public/tables/activity_logs/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.activity_logs', 'insert', 'authenticated');


