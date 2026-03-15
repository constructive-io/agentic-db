-- Revert: schemas/agent_db_app_public/tables/integrations/columns/id/alterations/alt0000001422


ALTER TABLE agent_db_app_public.integrations 
  ALTER COLUMN id DROP NOT NULL;


