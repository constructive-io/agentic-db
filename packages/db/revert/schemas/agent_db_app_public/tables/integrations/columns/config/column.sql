-- Revert: schemas/agent_db_app_public/tables/integrations/columns/config/column


ALTER TABLE "agent_db_app_public".integrations 
  DROP COLUMN config RESTRICT;


