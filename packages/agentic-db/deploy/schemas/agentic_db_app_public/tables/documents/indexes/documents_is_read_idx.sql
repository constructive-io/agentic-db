-- Deploy: schemas/agentic_db_app_public/tables/documents/indexes/documents_is_read_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/documents/columns/is_read/column
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_source_type_idx


CREATE INDEX documents_is_read_idx ON agentic_db_app_public.documents USING BTREE ( is_read );

