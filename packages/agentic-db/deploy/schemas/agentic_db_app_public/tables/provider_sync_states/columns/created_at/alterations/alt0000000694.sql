-- Deploy: schemas/agentic_db_app_public/tables/provider_sync_states/columns/created_at/alterations/alt0000000694
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/columns/created_at/column


COMMENT ON COLUMN agentic_db_app_public.provider_sync_states.created_at IS 'Timestamp when this record was created';

