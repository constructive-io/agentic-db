-- Revert: schemas/agentic_db_app_public/tables/codebas_chunks/columns/updated_at/alterations/alt0000001577


ALTER TABLE "agentic_db_app_public".codebas_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


