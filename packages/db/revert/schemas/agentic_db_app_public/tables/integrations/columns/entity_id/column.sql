-- Revert: schemas/agentic_db_app_public/tables/integrations/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".integrations 
  DROP COLUMN entity_id RESTRICT;


