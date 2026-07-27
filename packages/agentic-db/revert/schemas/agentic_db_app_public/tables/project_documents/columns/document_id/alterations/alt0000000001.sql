-- Revert: schemas/agentic_db_app_public/tables/project_documents/columns/document_id/alterations/alt0000000001


ALTER TABLE agentic_db_app_public.project_documents 
  ALTER COLUMN document_id DROP NOT NULL;


