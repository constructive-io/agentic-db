-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/updated_at/alterations/alt0000013181


ALTER TABLE agentic_db_app_public.tasks 
  ALTER COLUMN updated_at DROP NOT NULL;


