-- Revert: schemas/agentic_db_app_public/tables/companies_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".companies_chunks 
  DROP COLUMN content RESTRICT;


