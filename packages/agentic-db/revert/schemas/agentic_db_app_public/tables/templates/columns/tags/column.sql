-- Revert: schemas/agentic_db_app_public/tables/templates/columns/tags/column


ALTER TABLE "agentic_db_app_public".templates 
  DROP COLUMN tags RESTRICT;


