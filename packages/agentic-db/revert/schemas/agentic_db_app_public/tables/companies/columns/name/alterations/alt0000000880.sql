-- Revert: schemas/agentic_db_app_public/tables/companies/columns/name/alterations/alt0000000880


ALTER TABLE "agentic_db_app_public".companies 
  ALTER COLUMN name DROP NOT NULL;


