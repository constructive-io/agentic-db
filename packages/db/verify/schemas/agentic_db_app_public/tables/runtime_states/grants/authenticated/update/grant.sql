-- Verify: schemas/agentic_db_app_public/tables/runtime_states/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.runtime_states', 'update', 'authenticated');


