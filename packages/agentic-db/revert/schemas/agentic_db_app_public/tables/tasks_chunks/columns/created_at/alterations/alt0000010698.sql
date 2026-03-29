-- Revert: schemas/agentic_db_app_public/tables/tasks_chunks/columns/created_at/alterations/alt0000010698


ALTER TABLE agentic_db_app_public.tasks_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


