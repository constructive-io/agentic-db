-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/title/alterations/alt0000003372


ALTER TABLE agentic_db_app_public.tasks 
  ALTER COLUMN title DROP NOT NULL;


