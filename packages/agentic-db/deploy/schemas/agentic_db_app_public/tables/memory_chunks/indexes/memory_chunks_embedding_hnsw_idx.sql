-- Deploy: schemas/agentic_db_app_public/tables/memory_chunks/indexes/memory_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/table
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/indexes/rule_chunks_chunk_index_idx


CREATE INDEX memory_chunks_embedding_hnsw_idx ON agentic_db_app_public.memory_chunks USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

