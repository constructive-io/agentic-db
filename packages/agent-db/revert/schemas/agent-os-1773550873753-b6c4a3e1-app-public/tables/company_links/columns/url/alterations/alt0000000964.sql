-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/company_links/columns/url/alterations/alt0000000964


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".company_links 
  ALTER COLUMN url DROP NOT NULL;


