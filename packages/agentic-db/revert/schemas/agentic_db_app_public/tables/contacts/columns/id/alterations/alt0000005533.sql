-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/id/alterations/alt0000005533


ALTER TABLE agentic_db_app_public.contacts 
  ALTER COLUMN id DROP NOT NULL;


