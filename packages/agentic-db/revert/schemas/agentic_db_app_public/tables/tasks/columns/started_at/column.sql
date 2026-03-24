-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/started_at/column


ALTER TABLE agentic_db_app_public.tasks 
  DROP COLUMN started_at RESTRICT;


