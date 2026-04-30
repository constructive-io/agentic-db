-- Revert: schemas/agentic_db_app_public/tables/provider_sync_states/columns/resource_type/alterations/alt0000000689


ALTER TABLE agentic_db_app_public.provider_sync_states 
  ALTER COLUMN resource_type DROP NOT NULL;


