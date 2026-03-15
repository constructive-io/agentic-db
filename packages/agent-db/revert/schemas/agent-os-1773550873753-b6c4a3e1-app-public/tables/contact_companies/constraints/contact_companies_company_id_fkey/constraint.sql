-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_companies/constraints/contact_companies_company_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".contact_companies 
  DROP CONSTRAINT contact_companies_company_id_fkey;


