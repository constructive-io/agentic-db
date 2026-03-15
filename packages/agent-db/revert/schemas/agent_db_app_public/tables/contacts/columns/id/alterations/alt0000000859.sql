-- Revert: schemas/agent_db_app_public/tables/contacts/columns/id/alterations/alt0000000859


ALTER TABLE agent_db_app_public.contacts 
  ALTER COLUMN id DROP NOT NULL;


