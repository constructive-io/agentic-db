-- Deploy: schemas/agentic_db_app_public/tables/documents/indexes/documents_content_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/documents/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


CREATE INDEX documents_content_bm25_idx ON agentic_db_app_public.documents USING bm25 ( content ) WITH ( text_config = english );

