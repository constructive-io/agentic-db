-- Revert: schemas/agent_db_app_public/tables/contacts/columns/twitter_handle/column


ALTER TABLE agent_db_app_public.contacts 
  DROP COLUMN twitter_handle RESTRICT;


