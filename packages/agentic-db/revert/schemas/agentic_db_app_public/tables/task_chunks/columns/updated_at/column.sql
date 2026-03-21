-- Revert: schemas/agentic_db_app_public/tables/task_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.task_chunks 
  DROP COLUMN updated_at RESTRICT;


