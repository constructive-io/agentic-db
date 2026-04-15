-- Deploy: schemas/agentic_db_app_public/tables/touchpoints/constraints/touchpoints_company_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agentic_db_app_public.touchpoints 
  ADD CONSTRAINT touchpoints_company_id_fkey 
    FOREIGN KEY(company_id) 
    REFERENCES agentic_db_app_public.companies (id) 
    ON DELETE SET NULL;

