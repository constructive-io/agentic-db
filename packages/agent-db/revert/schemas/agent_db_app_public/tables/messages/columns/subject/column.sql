-- Revert: schemas/agent_db_app_public/tables/messages/columns/subject/column


ALTER TABLE agent_db_app_public.messages 
  DROP COLUMN subject RESTRICT;


