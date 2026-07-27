-- Deploy: schemas/agentic_db_app_public/tables/project_documents/columns/project_id/alterations/alt0000000001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_documents/table
-- requires: schemas/agentic_db_app_public/tables/project_documents/columns/project_id/column


ALTER TABLE agentic_db_app_public.project_documents 
  ALTER COLUMN project_id SET NOT NULL;

