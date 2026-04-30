-- Revert: schemas/agentic_db_app_public/tables/task_contacts/columns/contact_id/alterations/alt0000000793


ALTER TABLE agentic_db_app_public.task_contacts 
  ALTER COLUMN contact_id DROP NOT NULL;


