-- Deploy: schemas/agent_db_app_public/tables/company_documents/constraints/company_documents_company_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/company_documents/table
-- requires: schemas/agent_db_app_public/tables/contact_documents/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.company_documents 
  ADD CONSTRAINT company_documents_company_id_fkey 
    FOREIGN KEY(company_id) 
    REFERENCES agent_db_app_public.companies (id) 
    ON DELETE CASCADE;

