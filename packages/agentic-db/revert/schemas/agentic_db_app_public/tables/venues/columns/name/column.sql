-- Revert: schemas/agentic_db_app_public/tables/venues/columns/name/column


ALTER TABLE "agentic_db_app_public".venues 
  DROP COLUMN name RESTRICT;


