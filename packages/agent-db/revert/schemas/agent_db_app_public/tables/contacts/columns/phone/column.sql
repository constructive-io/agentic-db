-- Revert: schemas/agent_db_app_public/tables/contacts/columns/phone/column


ALTER TABLE agent_db_app_public.contacts 
  DROP COLUMN phone RESTRICT;


