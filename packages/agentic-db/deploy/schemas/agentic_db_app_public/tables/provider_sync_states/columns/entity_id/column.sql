-- Deploy: schemas/agentic_db_app_public/tables/provider_sync_states/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


ALTER TABLE "agentic_db_app_public".provider_sync_states 
  ADD COLUMN entity_id uuid;

