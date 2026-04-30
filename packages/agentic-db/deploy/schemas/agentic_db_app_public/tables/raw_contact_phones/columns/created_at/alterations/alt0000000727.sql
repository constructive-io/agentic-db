-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_phones/columns/created_at/alterations/alt0000000727
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contact_phones/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/indexes/provider_sync_states_status_idx


COMMENT ON COLUMN agentic_db_app_public.raw_contact_phones.created_at IS 'Timestamp when this record was created';

