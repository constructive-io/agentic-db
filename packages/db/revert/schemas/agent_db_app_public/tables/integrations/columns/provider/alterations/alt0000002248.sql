-- Revert: schemas/agent_db_app_public/tables/integrations/columns/provider/alterations/alt0000002248


ALTER TABLE "agent_db_app_public".integrations 
  ALTER COLUMN provider DROP NOT NULL;


