-- Revert: schemas/agentic_db_app_public/tables/provider_sync_states/columns/sync_cursor/column


ALTER TABLE "agentic_db_app_public".provider_sync_states 
  DROP COLUMN sync_cursor RESTRICT;


