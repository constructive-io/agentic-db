-- Deploy: schemas/agentic_db_app_public/tables/provider_sync_states/indexes/provider_sync_states_resource_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/table
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/columns/resource_type/column
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


CREATE INDEX provider_sync_states_resource_type_idx ON agentic_db_app_public.provider_sync_states USING BTREE ( resource_type );

