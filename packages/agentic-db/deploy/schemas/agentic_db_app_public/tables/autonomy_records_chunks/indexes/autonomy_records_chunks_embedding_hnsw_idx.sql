-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records_chunks/indexes/autonomy_records_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/indexes/provider_sync_states_last_sync_at_idx


CREATE INDEX autonomy_records_chunks_embedding_hnsw_idx ON "agentic_db_app_public".autonomy_records_chunks USING hnsw ( embedding vector_cosine_ops );

