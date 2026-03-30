-- Revert: schemas/agentic_db_app_public/tables/trips/columns/destination/column


ALTER TABLE "agentic_db_app_public".trips 
  DROP COLUMN destination RESTRICT;


