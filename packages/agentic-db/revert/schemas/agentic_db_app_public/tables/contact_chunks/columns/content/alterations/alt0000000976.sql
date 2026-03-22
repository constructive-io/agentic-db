-- Revert: schemas/agentic_db_app_public/tables/contact_chunks/columns/content/alterations/alt0000000976


ALTER TABLE "agentic_db_app_public".contact_chunks 
  ALTER COLUMN content DROP NOT NULL;


