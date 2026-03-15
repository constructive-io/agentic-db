-- Revert: schemas/agent_db_app_public/tables/project_contacts/columns/id/alterations/alt0000001332


ALTER TABLE agent_db_app_public.project_contacts 
  ALTER COLUMN id DROP NOT NULL;


