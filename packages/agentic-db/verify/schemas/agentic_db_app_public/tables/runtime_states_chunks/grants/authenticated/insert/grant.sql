-- Verify: schemas/agentic_db_app_public/tables/runtime_states_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.runtime_states_chunks', 'insert', 'authenticated');


