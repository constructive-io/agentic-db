-- Revert: schemas/agent_db_app_public/tables/integrations/columns/last_synced_at/column


ALTER TABLE agent_db_app_public.integrations 
  DROP COLUMN last_synced_at RESTRICT;


