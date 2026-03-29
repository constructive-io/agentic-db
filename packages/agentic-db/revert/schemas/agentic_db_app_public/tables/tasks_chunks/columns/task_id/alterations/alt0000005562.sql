-- Revert: schemas/agentic_db_app_public/tables/tasks_chunks/columns/task_id/alterations/alt0000005562


ALTER TABLE agentic_db_app_public.tasks_chunks 
  ALTER COLUMN task_id DROP NOT NULL;


