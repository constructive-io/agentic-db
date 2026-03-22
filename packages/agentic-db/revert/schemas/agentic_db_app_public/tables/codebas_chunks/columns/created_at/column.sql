-- Revert: schemas/agentic_db_app_public/tables/codebas_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".codebas_chunks 
  DROP COLUMN created_at RESTRICT;


