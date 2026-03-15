-- Deploy: schemas/agent_db_app_public/tables/integrations/columns/config/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/integrations/table
-- requires: schemas/agent_db_app_public/tables/integrations/columns/credentials_ref/column


ALTER TABLE "agent_db_app_public".integrations 
  ADD COLUMN config jsonb;

