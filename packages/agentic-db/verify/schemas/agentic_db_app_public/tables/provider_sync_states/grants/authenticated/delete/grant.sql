-- Verify: schemas/agentic_db_app_public/tables/provider_sync_states/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.provider_sync_states', 'delete', 'authenticated');


