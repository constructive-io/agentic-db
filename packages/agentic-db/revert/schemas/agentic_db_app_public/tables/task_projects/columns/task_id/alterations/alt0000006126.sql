-- Revert: schemas/agentic_db_app_public/tables/task_projects/columns/task_id/alterations/alt0000006126


ALTER TABLE agentic_db_app_public.task_projects 
  ALTER COLUMN task_id DROP NOT NULL;


