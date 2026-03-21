-- Revert: schemas/agentic_db_app_public/tables/templates/columns/variables/column


ALTER TABLE "agentic_db_app_public".templates 
  DROP COLUMN variables RESTRICT;


