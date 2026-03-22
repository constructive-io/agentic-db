-- Revert: schemas/agentic_db_app_public/tables/codebas_chunks/columns/content/alterations/alt0000002458


ALTER TABLE "agentic_db_app_public".codebas_chunks 
  ALTER COLUMN content DROP NOT NULL;


