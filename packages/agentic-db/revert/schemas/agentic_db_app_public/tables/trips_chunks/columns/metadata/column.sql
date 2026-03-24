-- Revert: schemas/agentic_db_app_public/tables/trips_chunks/columns/metadata/column


ALTER TABLE "agentic_db_app_public".trips_chunks 
  DROP COLUMN metadata RESTRICT;


