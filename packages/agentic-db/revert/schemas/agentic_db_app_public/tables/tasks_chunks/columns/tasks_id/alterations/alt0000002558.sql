-- Revert: schemas/agentic_db_app_public/tables/tasks_chunks/columns/tasks_id/alterations/alt0000002558


ALTER TABLE agentic_db_app_public.tasks_chunks 
  ALTER COLUMN tasks_id DROP NOT NULL;


