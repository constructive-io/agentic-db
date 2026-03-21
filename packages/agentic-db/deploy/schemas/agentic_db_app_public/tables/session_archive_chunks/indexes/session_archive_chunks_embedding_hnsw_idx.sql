-- Deploy: schemas/agentic_db_app_public/tables/session_archive_chunks/indexes/session_archive_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/table
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/tool_chunks/indexes/tool_chunks_chunk_index_idx


CREATE INDEX session_archive_chunks_embedding_hnsw_idx ON agentic_db_app_public.session_archive_chunks USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

