-- Revert: schemas/agentic_db_app_public/tables/provider_sync_states/columns/entity_id/alterations/alt0000004041


ALTER TABLE agentic_db_app_public.provider_sync_states 
  ALTER COLUMN entity_id DROP NOT NULL;


