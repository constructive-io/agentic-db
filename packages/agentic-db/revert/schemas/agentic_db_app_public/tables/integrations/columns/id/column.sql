-- Revert: schemas/agentic_db_app_public/tables/integrations/columns/id/column


ALTER TABLE "agentic_db_app_public".integrations 
  DROP COLUMN id RESTRICT;


