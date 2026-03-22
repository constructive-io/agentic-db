-- Deploy: schemas/agentic_db_app_public/tables/trip_chunks/indexes/trip_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/table
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE INDEX trip_chunks_embedding_hnsw_idx ON agentic_db_app_public.trip_chunks USING hnsw ( embedding vector_cosine_ops );

