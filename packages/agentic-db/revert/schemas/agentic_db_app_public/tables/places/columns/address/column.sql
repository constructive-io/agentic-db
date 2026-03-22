-- Revert: schemas/agentic_db_app_public/tables/places/columns/address/column


ALTER TABLE "agentic_db_app_public".places 
  DROP COLUMN address RESTRICT;


