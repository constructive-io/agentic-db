-- Verify: schemas/agentic_db_app_public/tables/runtime_state_dependencies/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.runtime_state_dependencies', 'insert', 'authenticated');


