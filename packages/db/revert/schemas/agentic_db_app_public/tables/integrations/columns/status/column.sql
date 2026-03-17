-- Revert: schemas/agentic_db_app_public/tables/integrations/columns/status/column


ALTER TABLE "agentic_db_app_public".integrations 
  DROP COLUMN status RESTRICT;


