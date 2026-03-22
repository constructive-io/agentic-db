-- Deploy: schemas/agentic_db_app_public/tables/contact_chunks/indexes/contact_chunks_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/table
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/columns/embedding_text/column


CREATE INDEX contact_chunks_embedding_text_bm25_idx ON agentic_db_app_public.contact_chunks USING bm25 ( embedding_text ) WITH ( text_config = english );

