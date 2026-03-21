-- Deploy: schemas/agentic_db_app_public/tables/tool_chunks/indexes/tool_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tool_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/blueprint_chunks/indexes/blueprint_chunks_chunk_index_idx


CREATE INDEX tool_chunks_embedding_hnsw_idx ON "agentic_db_app_public".tool_chunks USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

