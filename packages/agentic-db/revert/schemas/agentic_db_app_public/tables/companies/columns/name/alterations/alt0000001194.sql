-- Revert: schemas/agentic_db_app_public/tables/companies/columns/name/alterations/alt0000001194


ALTER TABLE "agentic_db_app_public".companies 
  ALTER COLUMN name DROP NOT NULL;


