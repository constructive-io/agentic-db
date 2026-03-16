-- Revert: schemas/agentic_db_app_public/tables/lists/columns/tags/column


ALTER TABLE "agentic_db_app_public".lists 
  DROP COLUMN tags RESTRICT;


