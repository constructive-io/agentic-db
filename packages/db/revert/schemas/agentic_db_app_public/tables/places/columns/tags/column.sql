-- Revert: schemas/agentic_db_app_public/tables/places/columns/tags/column


ALTER TABLE "agentic_db_app_public".places 
  DROP COLUMN tags RESTRICT;


