-- Revert: schemas/agentic_db_app_public/tables/codebases/columns/description/column


ALTER TABLE "agentic_db_app_public".codebases 
  DROP COLUMN description RESTRICT;


