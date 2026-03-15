-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_companies/columns/company_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contact_companies 
  DROP COLUMN company_id RESTRICT;


