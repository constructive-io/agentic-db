-- Verify: schemas/agentic_db_app_public/tables/activity_log/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.activity_log', 'select', 'authenticated');


