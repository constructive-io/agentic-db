-- Revert: schemas/agentic_db_app_public/tables/tasks_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.tasks_chunks 
  DROP COLUMN updated_at RESTRICT;


