-- Revert: schemas/agentic_db_app_public/tables/document_chunks/columns/created_at/alterations/alt0000002575


ALTER TABLE "agentic_db_app_public".document_chunks 
  ALTER COLUMN created_at DROP NOT NULL;


