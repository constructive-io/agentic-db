-- Deploy: schemas/agent_db_app_public/tables/integrations/columns/name/alterations/alt0000002247
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/integrations/table
-- requires: schemas/agent_db_app_public/tables/integrations/columns/name/column
-- requires: schemas/agent_db_app_public/tables/integrations/columns/updated_at/alterations/alt0000002246


ALTER TABLE "agent_db_app_public".integrations 
  ALTER COLUMN name SET NOT NULL;

