-- Deploy: schemas/agentic_db_app_public/tables/integrations/columns/type/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/integrations/table
-- requires: schemas/agentic_db_app_public/tables/integrations/columns/provider/alterations/alt0000001396


ALTER TABLE "agentic_db_app_public".integrations 
  ADD COLUMN type text;

