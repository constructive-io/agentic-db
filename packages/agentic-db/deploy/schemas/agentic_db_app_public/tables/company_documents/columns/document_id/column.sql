-- Deploy: schemas/agentic_db_app_public/tables/company_documents/columns/document_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_documents/table


ALTER TABLE agentic_db_app_public.company_documents 
  ADD COLUMN document_id uuid;

