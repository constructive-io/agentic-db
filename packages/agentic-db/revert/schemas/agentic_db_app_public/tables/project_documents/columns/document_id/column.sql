-- Revert: schemas/agentic_db_app_public/tables/project_documents/columns/document_id/column


ALTER TABLE agentic_db_app_public.project_documents 
  DROP COLUMN document_id RESTRICT;


