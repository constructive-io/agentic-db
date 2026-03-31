-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/result/column


ALTER TABLE agentic_db_app_public.tasks 
  DROP COLUMN result RESTRICT;


