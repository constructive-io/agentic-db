-- Revert: schemas/agentic_db_app_public/tables/task_projects/columns/project_id/alterations/alt0000003128


ALTER TABLE agentic_db_app_public.task_projects 
  ALTER COLUMN project_id DROP NOT NULL;


