-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_urls/indexes/raw_contact_urls_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/indexes/provider_sync_states_status_idx


CREATE INDEX raw_contact_urls_entity_id_idx ON "agentic_db_app_public".raw_contact_urls USING BTREE ( entity_id );

