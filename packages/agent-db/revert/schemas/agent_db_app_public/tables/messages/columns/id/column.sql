-- Revert: schemas/agent_db_app_public/tables/messages/columns/id/column


ALTER TABLE agent_db_app_public.messages 
  DROP COLUMN id RESTRICT;


