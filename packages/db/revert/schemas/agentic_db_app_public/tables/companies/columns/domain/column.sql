-- Revert: schemas/agentic_db_app_public/tables/companies/columns/domain/column


ALTER TABLE "agentic_db_app_public".companies 
  DROP COLUMN domain RESTRICT;


