-- Deploy: schemas/agentic_db_app_public/tables/raw_contacts/indexes/raw_contacts_source_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contacts/table
-- requires: schemas/agentic_db_app_public/tables/raw_contacts/columns/source/column
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/indexes/provider_sync_states_last_sync_at_idx


CREATE INDEX raw_contacts_source_idx ON "agentic_db_app_public".raw_contacts USING BTREE ( source );

