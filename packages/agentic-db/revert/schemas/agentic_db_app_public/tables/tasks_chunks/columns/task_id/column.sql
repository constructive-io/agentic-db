-- Revert: schemas/agentic_db_app_public/tables/tasks_chunks/columns/task_id/column


ALTER TABLE agentic_db_app_public.tasks_chunks 
  DROP COLUMN task_id RESTRICT;


