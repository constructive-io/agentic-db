-- Revert: schemas/agentic_db_app_public/tables/document_chunks/columns/id/alterations/alt0000004558


ALTER TABLE agentic_db_app_public.document_chunks 
  ALTER COLUMN id DROP NOT NULL;


