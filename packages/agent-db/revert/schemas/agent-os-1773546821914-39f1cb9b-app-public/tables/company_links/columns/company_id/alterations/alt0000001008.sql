-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_links/columns/company_id/alterations/alt0000001008


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".company_links 
  ALTER COLUMN company_id DROP NOT NULL;


