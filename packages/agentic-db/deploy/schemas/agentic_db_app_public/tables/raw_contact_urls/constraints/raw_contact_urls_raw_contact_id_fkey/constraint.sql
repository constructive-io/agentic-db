-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_urls/constraints/raw_contact_urls_raw_contact_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contacts/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/table
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/indexes/provider_sync_states_status_idx


ALTER TABLE agentic_db_app_public.raw_contact_urls 
  ADD CONSTRAINT raw_contact_urls_raw_contact_id_fkey 
    FOREIGN KEY(raw_contact_id) 
    REFERENCES agentic_db_app_public.raw_contacts (id) 
    ON DELETE CASCADE;

