-- Revert: schemas/agentic_db_app_public/tables/places/columns/name/column


ALTER TABLE "agentic_db_app_public".places 
  DROP COLUMN name RESTRICT;


