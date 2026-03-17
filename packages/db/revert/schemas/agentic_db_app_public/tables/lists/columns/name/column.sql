-- Revert: schemas/agentic_db_app_public/tables/lists/columns/name/column


ALTER TABLE "agentic_db_app_public".lists 
  DROP COLUMN name RESTRICT;


