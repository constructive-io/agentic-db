-- Revert: schemas/agent_db_app_public/tables/messages/columns/body_text/column


ALTER TABLE agent_db_app_public.messages 
  DROP COLUMN body_text RESTRICT;


