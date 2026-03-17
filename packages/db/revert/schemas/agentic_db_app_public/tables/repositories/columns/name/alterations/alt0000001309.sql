-- Revert: schemas/agentic_db_app_public/tables/repositories/columns/name/alterations/alt0000001309


ALTER TABLE "agentic_db_app_public".repositories 
  ALTER COLUMN name DROP NOT NULL;


