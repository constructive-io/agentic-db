-- Deploy: schemas/agentic_db_app_public/tables/project_contacts/constraints/project_contacts_project_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/project_contacts/table


ALTER TABLE agentic_db_app_public.project_contacts 
  ADD CONSTRAINT project_contacts_project_id_fkey 
    FOREIGN KEY(project_id) 
    REFERENCES agentic_db_app_public.projects (id) 
    ON DELETE CASCADE;

