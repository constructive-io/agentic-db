-- Revert: schemas/agentic_db_app_public/tables/document_chunks/columns/content/alterations/alt0000002580


ALTER TABLE "agentic_db_app_public".document_chunks 
  ALTER COLUMN content DROP NOT NULL;


