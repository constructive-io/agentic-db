-- Revert: schemas/agent_db_app_public/tables/integrations/columns/provider/column


ALTER TABLE "agent_db_app_public".integrations 
  DROP COLUMN provider RESTRICT;


