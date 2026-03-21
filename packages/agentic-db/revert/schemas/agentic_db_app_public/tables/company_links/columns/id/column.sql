-- Revert: schemas/agentic_db_app_public/tables/company_links/columns/id/column


ALTER TABLE "agentic_db_app_public".company_links 
  DROP COLUMN id RESTRICT;


