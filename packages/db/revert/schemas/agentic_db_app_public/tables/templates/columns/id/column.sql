-- Revert: schemas/agentic_db_app_public/tables/templates/columns/id/column


ALTER TABLE "agentic_db_app_public".templates 
  DROP COLUMN id RESTRICT;


