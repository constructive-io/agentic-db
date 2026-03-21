-- Deploy: schemas/agentic_db_app_public/tables/company_chunks/indexes/company_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_chunks/table
-- requires: schemas/agentic_db_app_public/tables/company_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/indexes/contact_chunks_chunk_index_idx


CREATE INDEX company_chunks_embedding_hnsw_idx ON agentic_db_app_public.company_chunks USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

