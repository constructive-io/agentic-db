-- Deploy: schemas/agentic_db_app_public/tables/company_chunks/indexes/company_chunks_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_chunks/table
-- requires: schemas/agentic_db_app_public/tables/company_chunks/columns/embedding_text/column
-- requires: schemas/agentic_db_app_public/tables/company_chunks/indexes/company_chunks_embedding_hnsw_idx


CREATE INDEX company_chunks_embedding_text_bm25_idx ON agentic_db_app_public.company_chunks USING bm25 ( embedding_text ) WITH ( text_config = english );

