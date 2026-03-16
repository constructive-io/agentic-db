-- Deploy: schemas/agentic_db_app_public/tables/integrations/columns/name/alterations/alt0000001395
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/integrations/table
-- requires: schemas/agentic_db_app_public/tables/integrations/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/integrations/columns/updated_at/alterations/alt0000001394


ALTER TABLE "agentic_db_app_public".integrations 
  ALTER COLUMN name SET NOT NULL;

