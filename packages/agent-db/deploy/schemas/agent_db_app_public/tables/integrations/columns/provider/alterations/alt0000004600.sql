-- Deploy: schemas/agent_db_app_public/tables/integrations/columns/provider/alterations/alt0000004600
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/integrations/table
-- requires: schemas/agent_db_app_public/tables/integrations/columns/provider/column
-- requires: schemas/agent_db_app_public/tables/integrations/columns/name/alterations/alt0000004599


ALTER TABLE "agent_db_app_public".integrations 
  ALTER COLUMN provider SET NOT NULL;

