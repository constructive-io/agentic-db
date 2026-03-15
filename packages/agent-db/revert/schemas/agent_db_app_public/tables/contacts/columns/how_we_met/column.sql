-- Revert: schemas/agent_db_app_public/tables/contacts/columns/how_we_met/column


ALTER TABLE agent_db_app_public.contacts 
  DROP COLUMN how_we_met RESTRICT;


