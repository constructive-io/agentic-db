-- Revert: schemas/agentic_db_app_public/tables/template_chunks/columns/content/alterations/alt0000002715


ALTER TABLE "agentic_db_app_public".template_chunks 
  ALTER COLUMN content DROP NOT NULL;


