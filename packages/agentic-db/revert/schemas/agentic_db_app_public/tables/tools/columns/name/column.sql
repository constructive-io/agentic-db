-- Revert: schemas/agentic_db_app_public/tables/tools/columns/name/column


ALTER TABLE "agentic_db_app_public".tools 
  DROP COLUMN name RESTRICT;


