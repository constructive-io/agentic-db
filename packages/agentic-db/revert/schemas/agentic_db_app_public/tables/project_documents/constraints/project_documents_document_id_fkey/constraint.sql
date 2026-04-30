-- Revert: schemas/agentic_db_app_public/tables/project_documents/constraints/project_documents_document_id_fkey/constraint


ALTER TABLE agentic_db_app_public.project_documents 
  DROP CONSTRAINT project_documents_document_id_fkey;


