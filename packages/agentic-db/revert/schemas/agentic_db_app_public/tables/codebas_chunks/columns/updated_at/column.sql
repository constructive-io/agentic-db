-- Revert: schemas/agentic_db_app_public/tables/codebas_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".codebas_chunks 
  DROP COLUMN updated_at RESTRICT;


