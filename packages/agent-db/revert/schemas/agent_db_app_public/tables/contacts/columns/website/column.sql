-- Revert: schemas/agent_db_app_public/tables/contacts/columns/website/column


ALTER TABLE agent_db_app_public.contacts 
  DROP COLUMN website RESTRICT;


