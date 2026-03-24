-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_urls/alterations/alt0000001901
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/table
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/indexes/provider_sync_states_last_sync_at_idx


ALTER TABLE "agentic_db_app_public".raw_contact_urls 
  DISABLE ROW LEVEL SECURITY;

