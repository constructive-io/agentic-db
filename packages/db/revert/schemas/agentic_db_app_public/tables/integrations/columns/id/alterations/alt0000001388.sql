-- Revert: schemas/agentic_db_app_public/tables/integrations/columns/id/alterations/alt0000001388


ALTER TABLE "agentic_db_app_public".integrations 
  ALTER COLUMN id DROP NOT NULL;


