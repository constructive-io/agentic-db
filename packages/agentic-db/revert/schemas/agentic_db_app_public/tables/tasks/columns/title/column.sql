-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/title/column


ALTER TABLE agentic_db_app_public.tasks 
  DROP COLUMN title RESTRICT;


