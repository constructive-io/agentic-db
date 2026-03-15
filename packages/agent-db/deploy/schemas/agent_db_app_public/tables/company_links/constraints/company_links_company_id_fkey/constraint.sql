-- Deploy: schemas/agent_db_app_public/tables/company_links/constraints/company_links_company_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/company_links/table
-- requires: schemas/agent_db_app_public/tables/contact_links/constraints/contact_links_contact_id_fkey/constraint


ALTER TABLE "agent_db_app_public".company_links 
  ADD CONSTRAINT company_links_company_id_fkey 
    FOREIGN KEY(company_id) 
    REFERENCES "agent_db_app_public".companies (id) 
    ON DELETE CASCADE;

