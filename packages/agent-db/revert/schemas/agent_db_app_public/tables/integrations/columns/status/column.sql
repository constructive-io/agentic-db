-- Revert: schemas/agent_db_app_public/tables/integrations/columns/status/column


ALTER TABLE agent_db_app_public.integrations 
  DROP COLUMN status RESTRICT;


