-- Deploy: schemas/agentic_db_app_public/tables/hiking_trail_chunks/indexes/hiking_trail_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trail_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx
-- requires: schemas/agentic_db_app_public/tables/hiking_trail_chunks/columns/embedding/column


CREATE INDEX hiking_trail_chunks_embedding_hnsw_idx ON agentic_db_app_public.hiking_trail_chunks USING hnsw ( embedding vector_cosine_ops );

