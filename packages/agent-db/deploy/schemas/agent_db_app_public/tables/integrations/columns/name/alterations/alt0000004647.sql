-- Deploy: schemas/agent_db_app_public/tables/integrations/columns/name/alterations/alt0000004647
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/integrations/table
-- requires: schemas/agent_db_app_public/tables/integrations/columns/name/column
-- requires: schemas/agent_db_app_public/tables/integrations/columns/updated_at/alterations/alt0000004646


ALTER TABLE "agent_db_app_public".integrations 
  ALTER COLUMN name SET NOT NULL;

