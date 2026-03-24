-- Revert: schemas/agentic_db_app_public/tables/companies/columns/name/column


ALTER TABLE "agentic_db_app_public".companies 
  DROP COLUMN name RESTRICT;


