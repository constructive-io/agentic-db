-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/company_links/constraints/company_links_company_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".company_links 
  DROP CONSTRAINT company_links_company_id_fkey;


