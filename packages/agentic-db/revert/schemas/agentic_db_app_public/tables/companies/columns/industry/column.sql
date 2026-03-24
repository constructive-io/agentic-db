-- Revert: schemas/agentic_db_app_public/tables/companies/columns/industry/column


ALTER TABLE "agentic_db_app_public".companies 
  DROP COLUMN industry RESTRICT;


