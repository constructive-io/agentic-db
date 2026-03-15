-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_companies/columns/company_id/alterations/alt0000001013


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".contact_companies 
  ALTER COLUMN company_id DROP NOT NULL;


