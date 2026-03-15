-- Revert: schemas/agent_db_app_public/tables/contacts/columns/headline/column


ALTER TABLE agent_db_app_public.contacts 
  DROP COLUMN headline RESTRICT;


