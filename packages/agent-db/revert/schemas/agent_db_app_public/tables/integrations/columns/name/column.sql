-- Revert: schemas/agent_db_app_public/tables/integrations/columns/name/column


ALTER TABLE agent_db_app_public.integrations 
  DROP COLUMN name RESTRICT;


