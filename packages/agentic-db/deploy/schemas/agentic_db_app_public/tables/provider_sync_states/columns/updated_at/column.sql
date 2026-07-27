-- Deploy: schemas/agentic_db_app_public/tables/provider_sync_states/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/table


ALTER TABLE agentic_db_app_public.provider_sync_states 
  ADD COLUMN updated_at timestamptz;

