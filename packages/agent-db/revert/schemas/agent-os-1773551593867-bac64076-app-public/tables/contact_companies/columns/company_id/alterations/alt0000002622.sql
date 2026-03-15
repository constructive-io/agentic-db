-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_companies/columns/company_id/alterations/alt0000002622


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contact_companies 
  ALTER COLUMN company_id DROP NOT NULL;


