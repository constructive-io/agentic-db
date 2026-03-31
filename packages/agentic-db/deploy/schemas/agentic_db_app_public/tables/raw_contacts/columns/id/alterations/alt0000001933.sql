-- Deploy: schemas/agentic_db_app_public/tables/raw_contacts/columns/id/alterations/alt0000001933
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contacts/table
-- requires: schemas/agentic_db_app_public/tables/raw_contacts/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/indexes/provider_sync_states_status_idx



ALTER TABLE "agentic_db_app_public".raw_contacts 
    ALTER COLUMN id SET DEFAULT uuidv7();

