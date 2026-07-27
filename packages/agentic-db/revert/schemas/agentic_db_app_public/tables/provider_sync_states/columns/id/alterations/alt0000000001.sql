-- Revert: schemas/agentic_db_app_public/tables/provider_sync_states/columns/id/alterations/alt0000000001


ALTER TABLE agentic_db_app_public.provider_sync_states 
  ALTER COLUMN id DROP NOT NULL;


