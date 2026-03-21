-- Deploy: schemas/agentic_db_app_public/tables/list_chunks/indexes/list_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/list_chunks/table
-- requires: schemas/agentic_db_app_public/tables/list_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/reminder_chunks/indexes/reminder_chunks_chunk_index_idx


CREATE INDEX list_chunks_embedding_hnsw_idx ON "agentic_db_app_public".list_chunks USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

