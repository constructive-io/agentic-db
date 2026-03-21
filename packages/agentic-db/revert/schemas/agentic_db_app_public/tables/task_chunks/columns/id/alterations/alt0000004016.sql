-- Revert: schemas/agentic_db_app_public/tables/task_chunks/columns/id/alterations/alt0000004016


ALTER TABLE agentic_db_app_public.task_chunks 
  ALTER COLUMN id DROP NOT NULL;


