-- Revert: schemas/agentic_db_app_public/tables/project_documents/columns/project_id/alterations/alt0000000001


ALTER TABLE agentic_db_app_public.project_documents 
  ALTER COLUMN project_id DROP NOT NULL;


