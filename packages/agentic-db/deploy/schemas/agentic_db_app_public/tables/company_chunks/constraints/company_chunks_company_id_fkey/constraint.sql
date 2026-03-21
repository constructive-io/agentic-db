-- Deploy: schemas/agentic_db_app_public/tables/company_chunks/constraints/company_chunks_company_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/company_chunks/table
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/indexes/contact_chunks_contact_id_idx


ALTER TABLE agentic_db_app_public.company_chunks 
  ADD CONSTRAINT company_chunks_company_id_fkey 
    FOREIGN KEY(company_id) 
    REFERENCES agentic_db_app_public.companies (id) 
    ON DELETE CASCADE;

