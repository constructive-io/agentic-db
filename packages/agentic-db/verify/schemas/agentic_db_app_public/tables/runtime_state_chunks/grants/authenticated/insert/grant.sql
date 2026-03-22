-- Verify: schemas/agentic_db_app_public/tables/runtime_state_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.runtime_state_chunks', 'insert', 'authenticated');


