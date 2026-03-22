-- Revert: schemas/agentic_db_app_public/tables/codebas_chunks/columns/codebasis_id/column


ALTER TABLE "agentic_db_app_public".codebas_chunks 
  DROP COLUMN codebasis_id RESTRICT;


