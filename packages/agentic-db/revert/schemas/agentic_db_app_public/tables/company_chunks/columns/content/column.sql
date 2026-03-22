-- Revert: schemas/agentic_db_app_public/tables/company_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".company_chunks 
  DROP COLUMN content RESTRICT;


