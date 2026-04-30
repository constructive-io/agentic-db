-- Deploy: schemas/agentic_db_app_public/tables/project_contacts/columns/project_id/alterations/alt0000000788
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_contacts/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx
-- requires: schemas/agentic_db_app_public/tables/project_contacts/columns/project_id/column


ALTER TABLE agentic_db_app_public.project_contacts 
  ALTER COLUMN project_id SET NOT NULL;

