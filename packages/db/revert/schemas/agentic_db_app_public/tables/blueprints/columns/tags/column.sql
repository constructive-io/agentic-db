-- Revert: schemas/agentic_db_app_public/tables/blueprints/columns/tags/column


ALTER TABLE "agentic_db_app_public".blueprints 
  DROP COLUMN tags RESTRICT;


