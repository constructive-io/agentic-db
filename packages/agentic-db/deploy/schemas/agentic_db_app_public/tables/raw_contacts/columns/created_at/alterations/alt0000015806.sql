-- Deploy: schemas/agentic_db_app_public/tables/raw_contacts/columns/created_at/alterations/alt0000015806
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contacts/table
-- requires: schemas/agentic_db_app_public/tables/raw_contacts/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/indexes/provider_sync_states_status_idx


ALTER TABLE agentic_db_app_public.raw_contacts 
  ALTER COLUMN created_at SET NOT NULL;

