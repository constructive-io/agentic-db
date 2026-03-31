-- Revert: schemas/agentic_db_app_public/tables/company_links/columns/title/column


ALTER TABLE "agentic_db_app_public".company_links 
  DROP COLUMN title RESTRICT;


