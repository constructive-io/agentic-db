-- Deploy: schemas/agentic_db_app_public/tables/company_images/constraints/company_images_company_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/company_images/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_app_public.company_images 
  ADD CONSTRAINT company_images_company_id_fkey 
    FOREIGN KEY(company_id) 
    REFERENCES agentic_db_app_public.companies (id) 
    ON DELETE CASCADE;

