-- Verify: schemas/agentic_db_app_public/tables/activity_log/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.activity_log', 'update', 'authenticated');


