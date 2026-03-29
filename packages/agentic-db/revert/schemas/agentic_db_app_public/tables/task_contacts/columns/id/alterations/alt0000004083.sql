-- Revert: schemas/agentic_db_app_public/tables/task_contacts/columns/id/alterations/alt0000004083


ALTER TABLE agentic_db_app_public.task_contacts 
  ALTER COLUMN id DROP NOT NULL;


