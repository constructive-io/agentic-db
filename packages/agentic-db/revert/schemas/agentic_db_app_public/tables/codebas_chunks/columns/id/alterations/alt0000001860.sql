-- Revert: schemas/agentic_db_app_public/tables/codebas_chunks/columns/id/alterations/alt0000001860


ALTER TABLE "agentic_db_app_public".codebas_chunks 
  ALTER COLUMN id DROP NOT NULL;


