-- Revert: schemas/agentic_db_app_public/tables/companies/columns/created_at/column


ALTER TABLE "agentic_db_app_public".companies 
  DROP COLUMN created_at RESTRICT;


