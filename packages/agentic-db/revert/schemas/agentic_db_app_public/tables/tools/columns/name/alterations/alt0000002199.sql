-- Revert: schemas/agentic_db_app_public/tables/tools/columns/name/alterations/alt0000002199


ALTER TABLE "agentic_db_app_public".tools 
  ALTER COLUMN name DROP NOT NULL;


