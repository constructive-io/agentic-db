-- Deploy: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/documents/columns/file_path/column


CREATE INDEX documents_file_path_idx ON agentic_db_app_public.documents USING BTREE ( file_path );

