-- Verify: schemas/agentic_db_app_public/tables/runtime_states_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.runtime_states_chunks', 'update', 'authenticated');


