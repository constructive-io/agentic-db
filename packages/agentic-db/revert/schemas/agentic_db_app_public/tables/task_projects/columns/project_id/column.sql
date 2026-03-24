-- Revert: schemas/agentic_db_app_public/tables/task_projects/columns/project_id/column


ALTER TABLE agentic_db_app_public.task_projects 
  DROP COLUMN project_id RESTRICT;


