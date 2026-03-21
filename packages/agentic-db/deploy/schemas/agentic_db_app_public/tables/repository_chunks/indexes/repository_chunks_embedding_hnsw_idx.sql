-- Deploy: schemas/agentic_db_app_public/tables/repository_chunks/indexes/repository_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repository_chunks/table
-- requires: schemas/agentic_db_app_public/tables/repository_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/chunks/indexes/chunks_embedding_text_bm25_idx


CREATE INDEX repository_chunks_embedding_hnsw_idx ON "agentic_db_app_public".repository_chunks USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

