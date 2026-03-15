-- Revert: schemas/agent_db_app_public/tables/integrations/columns/name/alterations/alt0000004647


ALTER TABLE "agent_db_app_public".integrations 
  ALTER COLUMN name DROP NOT NULL;


