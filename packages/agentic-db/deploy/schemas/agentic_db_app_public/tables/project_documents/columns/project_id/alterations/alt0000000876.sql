-- Deploy: schemas/agentic_db_app_public/tables/project_documents/columns/project_id/alterations/alt0000000876
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_documents/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx
-- requires: schemas/agentic_db_app_public/tables/project_documents/columns/project_id/column


ALTER TABLE agentic_db_app_public.project_documents 
  ALTER COLUMN project_id SET NOT NULL;

