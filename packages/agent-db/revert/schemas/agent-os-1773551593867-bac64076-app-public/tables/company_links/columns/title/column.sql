-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_links/columns/title/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".company_links 
  DROP COLUMN title RESTRICT;


