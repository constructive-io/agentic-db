-- Deploy: schemas/agent_db_app_public/tables/integrations/columns/status/alterations/alt0000004649
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/integrations/table
-- requires: schemas/agent_db_app_public/tables/integrations/columns/config/column
-- requires: schemas/agent_db_app_public/tables/integrations/columns/status/column



ALTER TABLE "agent_db_app_public".integrations 
    ALTER COLUMN status SET DEFAULT 'active';

