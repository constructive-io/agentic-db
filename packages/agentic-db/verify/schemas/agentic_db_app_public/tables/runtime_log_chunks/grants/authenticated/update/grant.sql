-- Verify: schemas/agentic_db_app_public/tables/runtime_log_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.runtime_log_chunks', 'update', 'authenticated');


