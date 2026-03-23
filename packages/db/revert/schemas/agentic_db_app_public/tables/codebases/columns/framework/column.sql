-- Revert: schemas/agentic_db_app_public/tables/codebases/columns/framework/column


ALTER TABLE "agentic_db_app_public".codebases 
  DROP COLUMN framework RESTRICT;


