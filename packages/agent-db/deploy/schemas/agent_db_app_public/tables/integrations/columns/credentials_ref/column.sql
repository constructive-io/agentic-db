-- Deploy: schemas/agent_db_app_public/tables/integrations/columns/credentials_ref/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/integrations/table
-- requires: schemas/agent_db_app_public/tables/integrations/columns/type/column


ALTER TABLE "agent_db_app_public".integrations 
  ADD COLUMN credentials_ref text;

