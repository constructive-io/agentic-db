-- Revert: schemas/agentic_db_app_public/tables/codebases_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".codebases_chunks 
  DROP COLUMN updated_at RESTRICT;


