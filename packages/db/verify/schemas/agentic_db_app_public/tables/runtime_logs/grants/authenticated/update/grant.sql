-- Verify: schemas/agentic_db_app_public/tables/runtime_logs/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.runtime_logs', 'update', 'authenticated');


