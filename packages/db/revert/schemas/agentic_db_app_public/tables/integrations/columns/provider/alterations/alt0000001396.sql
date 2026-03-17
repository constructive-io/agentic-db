-- Revert: schemas/agentic_db_app_public/tables/integrations/columns/provider/alterations/alt0000001396


ALTER TABLE "agentic_db_app_public".integrations 
  ALTER COLUMN provider DROP NOT NULL;


