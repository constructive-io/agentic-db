-- Revert: schemas/agent_db_app_public/tables/integrations/columns/created_at/alterations/alt0000001425


ALTER TABLE agent_db_app_public.integrations 
  ALTER COLUMN created_at DROP NOT NULL;


