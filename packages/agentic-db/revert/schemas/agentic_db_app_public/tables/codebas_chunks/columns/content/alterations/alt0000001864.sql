-- Revert: schemas/agentic_db_app_public/tables/codebas_chunks/columns/content/alterations/alt0000001864


ALTER TABLE "agentic_db_app_public".codebas_chunks 
  ALTER COLUMN content DROP NOT NULL;


