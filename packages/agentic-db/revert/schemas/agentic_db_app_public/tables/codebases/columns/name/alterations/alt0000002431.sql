-- Revert: schemas/agentic_db_app_public/tables/codebases/columns/name/alterations/alt0000002431


ALTER TABLE "agentic_db_app_public".codebases 
  ALTER COLUMN name DROP NOT NULL;


