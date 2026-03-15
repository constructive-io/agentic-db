-- Deploy: schemas/agent_db_app_public/tables/contact_companies/constraints/contact_companies_company_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/contact_companies/table
-- requires: schemas/agent_db_app_public/tables/venue_links/constraints/venue_links_venue_id_fkey/constraint


ALTER TABLE "agent_db_app_public".contact_companies 
  ADD CONSTRAINT contact_companies_company_id_fkey 
    FOREIGN KEY(company_id) 
    REFERENCES "agent_db_app_public".companies (id) 
    ON DELETE CASCADE;

