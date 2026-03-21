-- Deploy: schemas/agentic_db_app_public/tables/prompt_chunks/indexes/prompt_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompt_chunks/table
-- requires: schemas/agentic_db_app_public/tables/prompt_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/indexes/goal_chunks_chunk_index_idx


CREATE INDEX prompt_chunks_embedding_hnsw_idx ON "agentic_db_app_public".prompt_chunks USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

