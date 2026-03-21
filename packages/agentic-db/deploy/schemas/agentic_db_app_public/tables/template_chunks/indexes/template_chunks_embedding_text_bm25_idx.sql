-- Deploy: schemas/agentic_db_app_public/tables/template_chunks/indexes/template_chunks_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/template_chunks/table
-- requires: schemas/agentic_db_app_public/tables/template_chunks/columns/embedding_text/column
-- requires: schemas/agentic_db_app_public/tables/template_chunks/indexes/template_chunks_embedding_hnsw_idx


CREATE INDEX template_chunks_embedding_text_bm25_idx ON agentic_db_app_public.template_chunks USING bm25 ( embedding_text ) WITH ( text_config = english );

