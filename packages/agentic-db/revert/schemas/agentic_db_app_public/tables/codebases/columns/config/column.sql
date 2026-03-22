-- Revert: schemas/agentic_db_app_public/tables/codebases/columns/config/column


ALTER TABLE "agentic_db_app_public".codebases 
  DROP COLUMN config RESTRICT;


