-- Deploy: schemas/agentic_db_app_public/tables/deal_companies/constraints/deal_companies_company_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/deal_companies/table


ALTER TABLE agentic_db_app_public.deal_companies 
  ADD CONSTRAINT deal_companies_company_id_fkey 
    FOREIGN KEY(company_id) 
    REFERENCES agentic_db_app_public.companies (id) 
    ON DELETE CASCADE;

