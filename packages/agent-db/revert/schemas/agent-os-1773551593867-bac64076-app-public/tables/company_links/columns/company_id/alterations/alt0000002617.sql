-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_links/columns/company_id/alterations/alt0000002617


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".company_links 
  ALTER COLUMN company_id DROP NOT NULL;


