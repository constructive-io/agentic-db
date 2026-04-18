-- Deploy: schemas/agentic_db_app_public/tables/task_projects/constraints/task_projects_project_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/task_projects/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.task_projects 
  ADD CONSTRAINT task_projects_project_id_fkey 
    FOREIGN KEY(project_id) 
    REFERENCES agentic_db_app_public.projects (id) 
    ON DELETE CASCADE;

