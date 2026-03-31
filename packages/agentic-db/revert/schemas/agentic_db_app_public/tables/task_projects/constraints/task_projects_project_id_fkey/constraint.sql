-- Revert: schemas/agentic_db_app_public/tables/task_projects/constraints/task_projects_project_id_fkey/constraint


ALTER TABLE agentic_db_app_public.task_projects 
  DROP CONSTRAINT task_projects_project_id_fkey;


