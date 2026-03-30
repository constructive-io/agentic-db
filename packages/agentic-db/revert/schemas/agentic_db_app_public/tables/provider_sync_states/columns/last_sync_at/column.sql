-- Revert: schemas/agentic_db_app_public/tables/provider_sync_states/columns/last_sync_at/column


ALTER TABLE "agentic_db_app_public".provider_sync_states 
  DROP COLUMN last_sync_at RESTRICT;


