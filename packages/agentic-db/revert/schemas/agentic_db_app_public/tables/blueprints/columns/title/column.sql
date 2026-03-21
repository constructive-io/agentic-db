-- Revert: schemas/agentic_db_app_public/tables/blueprints/columns/title/column


ALTER TABLE "agentic_db_app_public".blueprints 
  DROP COLUMN title RESTRICT;


