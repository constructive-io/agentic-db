-- Revert: schemas/agentic_db_app_public/tables/templates/columns/content/column


ALTER TABLE "agentic_db_app_public".templates 
  DROP COLUMN content RESTRICT;


