-- Verify: schemas/agentic_db_app_public/tables/provider_sync_states/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.provider_sync_states', 'insert', 'authenticated');


