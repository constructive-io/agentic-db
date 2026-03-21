-- Deploy: schemas/agentic_db_app_public/tables/integrations/columns/status/alterations/alt0000002509
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/integrations/table
-- requires: schemas/agentic_db_app_public/tables/integrations/columns/config/column
-- requires: schemas/agentic_db_app_public/tables/integrations/columns/status/column



ALTER TABLE "agentic_db_app_public".integrations 
    ALTER COLUMN status SET DEFAULT 'active';

