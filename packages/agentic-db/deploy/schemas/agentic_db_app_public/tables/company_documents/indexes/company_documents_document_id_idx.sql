-- Deploy: schemas/agentic_db_app_public/tables/company_documents/indexes/company_documents_document_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_documents/table
-- requires: schemas/agentic_db_app_public/tables/company_documents/columns/document_id/column


CREATE INDEX company_documents_document_id_idx ON agentic_db_app_public.company_documents USING BTREE ( document_id );

