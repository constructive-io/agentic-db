-- Deploy: schemas/agentic_db_app_public/tables/project_documents/constraints/project_documents_project_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/project_documents/table


ALTER TABLE agentic_db_app_public.project_documents 
  ADD CONSTRAINT project_documents_project_id_fkey 
    FOREIGN KEY(project_id) 
    REFERENCES agentic_db_app_public.projects (id) 
    ON DELETE CASCADE;

