-- Revert: schemas/agent_db_app_public/tables/integrations/columns/id/column


ALTER TABLE agent_db_app_public.integrations 
  DROP COLUMN id RESTRICT;


