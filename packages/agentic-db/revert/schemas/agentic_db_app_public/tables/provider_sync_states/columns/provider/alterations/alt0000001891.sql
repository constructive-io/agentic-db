-- Revert: schemas/agentic_db_app_public/tables/provider_sync_states/columns/provider/alterations/alt0000001891


ALTER TABLE "agentic_db_app_public".provider_sync_states 
  ALTER COLUMN provider DROP NOT NULL;


