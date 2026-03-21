-- Revert: schemas/agentic_db_app_public/tables/task_chunks/columns/task_id/column


ALTER TABLE agentic_db_app_public.task_chunks 
  DROP COLUMN task_id RESTRICT;


