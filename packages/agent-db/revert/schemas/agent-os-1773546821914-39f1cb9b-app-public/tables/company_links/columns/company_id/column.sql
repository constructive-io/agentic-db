-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_links/columns/company_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".company_links 
  DROP COLUMN company_id RESTRICT;


