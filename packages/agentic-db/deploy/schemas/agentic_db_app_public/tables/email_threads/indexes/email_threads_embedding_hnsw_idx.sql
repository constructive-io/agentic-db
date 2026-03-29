-- Deploy: schemas/agentic_db_app_public/tables/email_threads/indexes/email_threads_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads/table
-- requires: schemas/agentic_db_app_public/tables/email_threads/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


CREATE INDEX email_threads_embedding_hnsw_idx ON agentic_db_app_public.email_threads USING hnsw ( embedding vector_cosine_ops );

