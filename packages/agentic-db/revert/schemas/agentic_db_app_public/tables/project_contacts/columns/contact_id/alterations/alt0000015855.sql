-- Revert: schemas/agentic_db_app_public/tables/project_contacts/columns/contact_id/alterations/alt0000015855


ALTER TABLE agentic_db_app_public.project_contacts 
  ALTER COLUMN contact_id DROP NOT NULL;


