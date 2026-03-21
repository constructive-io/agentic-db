-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/id/alterations/alt0000003949


ALTER TABLE agentic_db_app_public.tasks 
  ALTER COLUMN id DROP NOT NULL;


