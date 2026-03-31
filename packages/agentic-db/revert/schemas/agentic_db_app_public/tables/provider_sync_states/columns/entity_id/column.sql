-- Revert: schemas/agentic_db_app_public/tables/provider_sync_states/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".provider_sync_states 
  DROP COLUMN entity_id RESTRICT;


