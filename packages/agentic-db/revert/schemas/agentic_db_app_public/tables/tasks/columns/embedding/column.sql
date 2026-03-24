-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/embedding/column


ALTER TABLE agentic_db_app_public.tasks 
  DROP COLUMN embedding RESTRICT;


