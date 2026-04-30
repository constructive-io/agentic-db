-- Deploy: schemas/agentic_db_app_public/tables/goal_projects/constraints/goal_projects_project_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/goal_projects/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


ALTER TABLE agentic_db_app_public.goal_projects 
  ADD CONSTRAINT goal_projects_project_id_fkey 
    FOREIGN KEY(project_id) 
    REFERENCES agentic_db_app_public.projects (id) 
    ON DELETE CASCADE;

