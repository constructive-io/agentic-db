-- Revert: schemas/agent_db_app_public/tables/project_contacts/columns/contact_id/alterations/alt0000001331


ALTER TABLE agent_db_app_public.project_contacts 
  ALTER COLUMN contact_id DROP NOT NULL;


