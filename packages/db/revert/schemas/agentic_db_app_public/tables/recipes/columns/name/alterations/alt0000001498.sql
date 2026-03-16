-- Revert: schemas/agentic_db_app_public/tables/recipes/columns/name/alterations/alt0000001498


ALTER TABLE "agentic_db_app_public".recipes 
  ALTER COLUMN name DROP NOT NULL;


