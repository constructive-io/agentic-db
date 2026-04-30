-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_urls/columns/raw_contact_id/alterations/alt0000000743
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/columns/raw_contact_id/column
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/indexes/provider_sync_states_status_idx


ALTER TABLE agentic_db_app_public.raw_contact_urls 
  ALTER COLUMN raw_contact_id SET NOT NULL;

