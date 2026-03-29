-- Revert: schemas/agentic_db_app_public/tables/provider_sync_states/columns/created_at/alterations/alt0000011344




ALTER TABLE agentic_db_app_public.provider_sync_states 
    ALTER COLUMN created_at DROP DEFAULT;



