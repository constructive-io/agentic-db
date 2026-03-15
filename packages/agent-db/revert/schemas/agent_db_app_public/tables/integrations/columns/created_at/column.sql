-- Revert: schemas/agent_db_app_public/tables/integrations/columns/created_at/column


ALTER TABLE agent_db_app_public.integrations 
  DROP COLUMN created_at RESTRICT;


