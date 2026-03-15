-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_links/columns/url/alterations/alt0000002573


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".company_links 
  ALTER COLUMN url DROP NOT NULL;


