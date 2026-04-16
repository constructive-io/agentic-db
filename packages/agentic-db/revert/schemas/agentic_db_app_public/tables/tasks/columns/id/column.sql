-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/id/column


ALTER TABLE agentic_db_app_public.tasks 
  DROP COLUMN id RESTRICT;


