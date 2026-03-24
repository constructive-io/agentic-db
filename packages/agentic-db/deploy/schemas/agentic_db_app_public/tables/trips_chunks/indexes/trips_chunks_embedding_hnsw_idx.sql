-- Deploy: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/table
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE INDEX trips_chunks_embedding_hnsw_idx ON "agentic_db_app_public".trips_chunks USING hnsw ( embedding vector_cosine_ops );

