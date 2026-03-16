-- Revert: schemas/agentic_db_app_public/tables/integrations/columns/entity_id/alterations/alt0000001390


ALTER TABLE "agentic_db_app_public".integrations 
  ALTER COLUMN entity_id DROP NOT NULL;


