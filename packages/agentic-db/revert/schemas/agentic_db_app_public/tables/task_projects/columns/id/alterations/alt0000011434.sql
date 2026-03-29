-- Revert: schemas/agentic_db_app_public/tables/task_projects/columns/id/alterations/alt0000011434


ALTER TABLE agentic_db_app_public.task_projects 
  ALTER COLUMN id DROP NOT NULL;


