-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_links/constraints/company_links_company_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/companies/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_links/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/constraints/contact_links_contact_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".company_links 
  ADD CONSTRAINT company_links_company_id_fkey 
    FOREIGN KEY(company_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-app-public".companies (id) 
    ON DELETE CASCADE;

