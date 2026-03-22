-- Deploy: schemas/agentic_db_app_public/tables/company_chunks/indexes/company_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_chunks/table
-- requires: schemas/agentic_db_app_public/tables/company_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/company_chunks/columns/embedding_text/column


CREATE INDEX company_chunks_embedding_hnsw_idx ON agentic_db_app_public.company_chunks USING hnsw ( embedding vector_cosine_ops );

