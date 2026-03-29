-- Deploy: schemas/agentic_db_app_public/tables/provider_sync_states/columns/resource_type/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


ALTER TABLE agentic_db_app_public.provider_sync_states 
  ADD COLUMN resource_type text;

