-- Revert: schemas/agentic_db_app_public/tables/codebases/columns/language/column


ALTER TABLE "agentic_db_app_public".codebases 
  DROP COLUMN language RESTRICT;


