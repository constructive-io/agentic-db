-- Revert: schemas/agent_db_app_public/tables/project_contacts/columns/entity_id/alterations/alt0000001334


ALTER TABLE agent_db_app_public.project_contacts 
  ALTER COLUMN entity_id DROP NOT NULL;


