-- Revert: schemas/agentic_db_app_public/tables/company_links/constraints/company_links_pkey/constraint


ALTER TABLE "agentic_db_app_public".company_links 
  DROP CONSTRAINT company_links_pkey;


