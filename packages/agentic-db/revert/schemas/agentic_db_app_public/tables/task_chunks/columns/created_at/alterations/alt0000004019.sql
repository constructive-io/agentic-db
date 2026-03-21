-- Revert: schemas/agentic_db_app_public/tables/task_chunks/columns/created_at/alterations/alt0000004019


ALTER TABLE agentic_db_app_public.task_chunks 
  ALTER COLUMN created_at DROP NOT NULL;


