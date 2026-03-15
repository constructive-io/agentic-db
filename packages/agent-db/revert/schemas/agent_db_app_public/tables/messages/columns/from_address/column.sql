-- Revert: schemas/agent_db_app_public/tables/messages/columns/from_address/column


ALTER TABLE agent_db_app_public.messages 
  DROP COLUMN from_address RESTRICT;


