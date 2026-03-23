-- Revert: schemas/agentic_db_app_public/tables/codebases/columns/embedding/column


ALTER TABLE "agentic_db_app_public".codebases 
  DROP COLUMN embedding RESTRICT;


