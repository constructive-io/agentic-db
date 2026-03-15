-- Deploy: schemas/agent_db_app_public/tables/integrations/columns/type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/integrations/table
-- requires: schemas/agent_db_app_public/tables/integrations/columns/provider/alterations/alt0000004600


ALTER TABLE "agent_db_app_public".integrations 
  ADD COLUMN type text;

