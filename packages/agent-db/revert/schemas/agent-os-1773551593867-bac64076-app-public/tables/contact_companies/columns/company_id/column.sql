-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_companies/columns/company_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contact_companies 
  DROP COLUMN company_id RESTRICT;


