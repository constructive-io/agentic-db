-- Deploy: schemas/agentic_db_app_public/tables/task_projects/columns/project_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_projects/table


ALTER TABLE agentic_db_app_public.task_projects 
  ADD COLUMN project_id uuid;

