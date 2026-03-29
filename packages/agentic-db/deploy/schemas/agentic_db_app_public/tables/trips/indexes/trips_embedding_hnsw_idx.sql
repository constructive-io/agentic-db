-- Deploy: schemas/agentic_db_app_public/tables/trips/indexes/trips_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/trips/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


CREATE INDEX trips_embedding_hnsw_idx ON agentic_db_app_public.trips USING hnsw ( embedding vector_cosine_ops );

