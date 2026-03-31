-- Revert: schemas/agentic_db_app_public/tables/tasks_chunks/columns/id/alterations/alt0000003381


ALTER TABLE agentic_db_app_public.tasks_chunks 
  ALTER COLUMN id DROP NOT NULL;


