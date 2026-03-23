-- Verify: schemas/agentic_db_app_public/tables/runtime_logs_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.runtime_logs_chunks', 'select', 'authenticated');


