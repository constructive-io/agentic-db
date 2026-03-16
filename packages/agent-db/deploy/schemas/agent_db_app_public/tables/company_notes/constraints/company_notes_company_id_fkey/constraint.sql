-- Deploy: schemas/agent_db_app_public/tables/company_notes/constraints/company_notes_company_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/company_notes/table
-- requires: schemas/agent_db_app_public/tables/contact_notes/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".company_notes 
  ADD CONSTRAINT company_notes_company_id_fkey 
    FOREIGN KEY(company_id) 
    REFERENCES "agent_db_app_public".companies (id) 
    ON DELETE CASCADE;

