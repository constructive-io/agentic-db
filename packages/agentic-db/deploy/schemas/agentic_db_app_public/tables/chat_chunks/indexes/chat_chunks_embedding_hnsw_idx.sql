-- Deploy: schemas/agentic_db_app_public/tables/chat_chunks/indexes/chat_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chat_chunks/table
-- requires: schemas/agentic_db_app_public/tables/chat_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/session_chunks/indexes/session_chunks_chunk_index_idx


CREATE INDEX chat_chunks_embedding_hnsw_idx ON agentic_db_app_public.chat_chunks USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

