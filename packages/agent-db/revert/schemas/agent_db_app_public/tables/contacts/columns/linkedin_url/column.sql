-- Revert: schemas/agent_db_app_public/tables/contacts/columns/linkedin_url/column


ALTER TABLE agent_db_app_public.contacts 
  DROP COLUMN linkedin_url RESTRICT;


