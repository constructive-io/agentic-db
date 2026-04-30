-- Deploy: schemas/agentic_db_app_public/tables/project_documents/indexes/project_documents_document_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_documents/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx
-- requires: schemas/agentic_db_app_public/tables/project_documents/columns/document_id/column


CREATE INDEX project_documents_document_id_idx ON agentic_db_app_public.project_documents USING BTREE ( document_id );

