-- Revert: schemas/agentic_db_app_public/tables/codebases/columns/name/column


ALTER TABLE "agentic_db_app_public".codebases 
  DROP COLUMN name RESTRICT;


