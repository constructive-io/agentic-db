-- Revert: schemas/agent_db_app_public/tables/project_contacts/columns/project_id/alterations/alt0000001330


ALTER TABLE agent_db_app_public.project_contacts 
  ALTER COLUMN project_id DROP NOT NULL;


