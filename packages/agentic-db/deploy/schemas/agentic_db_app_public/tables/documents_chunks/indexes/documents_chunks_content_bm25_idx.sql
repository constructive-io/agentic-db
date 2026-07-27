-- Deploy: schemas/agentic_db_app_public/tables/documents_chunks/indexes/documents_chunks_content_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents_chunks/table
-- requires: schemas/agentic_db_app_public/tables/documents_chunks/columns/content/column


CREATE INDEX documents_chunks_content_bm25_idx ON agentic_db_app_public.documents_chunks USING bm25 ( content ) WITH ( text_config = english );

