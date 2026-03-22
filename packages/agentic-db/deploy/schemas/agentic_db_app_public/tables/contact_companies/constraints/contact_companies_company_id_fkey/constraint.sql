-- Deploy: schemas/agentic_db_app_public/tables/contact_companies/constraints/contact_companies_company_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/contact_companies/table
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/indexes/interaction_chunks_interaction_id_idx


ALTER TABLE agentic_db_app_public.contact_companies 
  ADD CONSTRAINT contact_companies_company_id_fkey 
    FOREIGN KEY(company_id) 
    REFERENCES agentic_db_app_public.companies (id) 
    ON DELETE CASCADE;

