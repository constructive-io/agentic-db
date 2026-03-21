-- Revert: schemas/agentic_db_app_public/tables/document_chunks/columns/document_id/alterations/alt0000004579


ALTER TABLE agentic_db_app_public.document_chunks 
  ALTER COLUMN document_id DROP NOT NULL;


