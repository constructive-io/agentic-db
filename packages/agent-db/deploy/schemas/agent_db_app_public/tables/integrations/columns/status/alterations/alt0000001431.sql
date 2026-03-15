-- Deploy: schemas/agent_db_app_public/tables/integrations/columns/status/alterations/alt0000001431
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/integrations/table
-- requires: schemas/agent_db_app_public/tables/integrations/columns/config/column
-- requires: schemas/agent_db_app_public/tables/integrations/columns/status/column



ALTER TABLE agent_db_app_public.integrations 
    ALTER COLUMN status SET DEFAULT 'active';

