-- Revert: schemas/agentic_db_app_public/tables/project_contacts/columns/project_id/alterations/alt0000003113


ALTER TABLE agentic_db_app_public.project_contacts 
  ALTER COLUMN project_id DROP NOT NULL;


