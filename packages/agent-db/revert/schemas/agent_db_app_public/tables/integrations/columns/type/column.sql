-- Revert: schemas/agent_db_app_public/tables/integrations/columns/type/column


ALTER TABLE agent_db_app_public.integrations 
  DROP COLUMN type RESTRICT;


