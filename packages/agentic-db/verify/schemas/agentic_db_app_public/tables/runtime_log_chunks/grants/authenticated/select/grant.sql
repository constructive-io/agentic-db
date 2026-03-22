-- Verify: schemas/agentic_db_app_public/tables/runtime_log_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.runtime_log_chunks', 'select', 'authenticated');


