-- Revert: schemas/agentic_db_app_public/tables/codebases/columns/created_at/column


ALTER TABLE "agentic_db_app_public".codebases 
  DROP COLUMN created_at RESTRICT;


