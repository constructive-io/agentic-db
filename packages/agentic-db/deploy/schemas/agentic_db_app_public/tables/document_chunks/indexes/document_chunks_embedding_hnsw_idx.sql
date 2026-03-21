-- Deploy: schemas/agentic_db_app_public/tables/document_chunks/indexes/document_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/document_chunks/table
-- requires: schemas/agentic_db_app_public/tables/document_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/calendar_event_chunks/indexes/calendar_event_chunks_chunk_index_idx


CREATE INDEX document_chunks_embedding_hnsw_idx ON agentic_db_app_public.document_chunks USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

