-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/company_links/columns/company_id/alterations/alt0000001008


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".company_links 
  ALTER COLUMN company_id DROP NOT NULL;


