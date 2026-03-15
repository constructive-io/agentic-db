-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_links/columns/url/alterations/alt0000000964


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".company_links 
  ALTER COLUMN url DROP NOT NULL;


