-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/priority/column


ALTER TABLE agentic_db_app_public.tasks 
  DROP COLUMN priority RESTRICT;


