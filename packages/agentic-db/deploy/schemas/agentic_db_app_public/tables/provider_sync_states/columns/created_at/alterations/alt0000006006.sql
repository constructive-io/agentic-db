-- Deploy: schemas/agentic_db_app_public/tables/provider_sync_states/columns/created_at/alterations/alt0000006006
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/table
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx



ALTER TABLE agentic_db_app_public.provider_sync_states 
    ALTER COLUMN created_at SET DEFAULT now();

