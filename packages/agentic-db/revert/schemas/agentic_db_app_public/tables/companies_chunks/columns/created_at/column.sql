-- Revert: schemas/agentic_db_app_public/tables/companies_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".companies_chunks 
  DROP COLUMN created_at RESTRICT;


