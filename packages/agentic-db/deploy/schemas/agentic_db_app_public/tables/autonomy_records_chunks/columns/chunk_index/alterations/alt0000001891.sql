-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records_chunks/columns/chunk_index/alterations/alt0000001891
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/columns/chunk_index/column
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/indexes/provider_sync_states_last_sync_at_idx



ALTER TABLE "agentic_db_app_public".autonomy_records_chunks 
    ALTER COLUMN chunk_index SET DEFAULT 0;

