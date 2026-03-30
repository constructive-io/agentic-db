-- Revert: schemas/agentic_db_app_public/tables/provider_sync_states/columns/updated_at/alterations/alt0000001921




ALTER TABLE "agentic_db_app_public".provider_sync_states 
    ALTER COLUMN updated_at DROP DEFAULT;



