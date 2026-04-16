-- Deploy: schemas/agentic_db_app_public/tables/provider_sync_states/columns/resource_type/alterations/alt0000000593
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/columns/resource_type/column


ALTER TABLE agentic_db_app_public.provider_sync_states 
  ALTER COLUMN resource_type SET NOT NULL;

