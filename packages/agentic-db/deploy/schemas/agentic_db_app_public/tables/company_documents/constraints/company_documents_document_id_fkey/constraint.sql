-- Deploy: schemas/agentic_db_app_public/tables/company_documents/constraints/company_documents_document_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/company_documents/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


ALTER TABLE agentic_db_app_public.company_documents 
  ADD CONSTRAINT company_documents_document_id_fkey 
    FOREIGN KEY(document_id) 
    REFERENCES agentic_db_app_public.documents (id) 
    ON DELETE CASCADE;

