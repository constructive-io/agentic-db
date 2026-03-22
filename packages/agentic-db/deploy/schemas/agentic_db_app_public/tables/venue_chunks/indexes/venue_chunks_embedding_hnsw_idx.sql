-- Deploy: schemas/agentic_db_app_public/tables/venue_chunks/indexes/venue_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/table
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/columns/embedding_text/column


CREATE INDEX venue_chunks_embedding_hnsw_idx ON agentic_db_app_public.venue_chunks USING hnsw ( embedding vector_cosine_ops );

