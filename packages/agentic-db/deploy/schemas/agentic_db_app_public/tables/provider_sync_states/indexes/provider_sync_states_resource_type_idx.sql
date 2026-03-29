-- Deploy: schemas/agentic_db_app_public/tables/provider_sync_states/indexes/provider_sync_states_resource_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/columns/resource_type/column


CREATE INDEX provider_sync_states_resource_type_idx ON agentic_db_app_public.provider_sync_states USING BTREE ( resource_type );

