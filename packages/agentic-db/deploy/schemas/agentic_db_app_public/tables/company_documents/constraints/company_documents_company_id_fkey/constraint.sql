-- Deploy: schemas/agentic_db_app_public/tables/company_documents/constraints/company_documents_company_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/company_documents/table


ALTER TABLE agentic_db_app_public.company_documents 
  ADD CONSTRAINT company_documents_company_id_fkey 
    FOREIGN KEY(company_id) 
    REFERENCES agentic_db_app_public.companies (id) 
    ON DELETE CASCADE;

