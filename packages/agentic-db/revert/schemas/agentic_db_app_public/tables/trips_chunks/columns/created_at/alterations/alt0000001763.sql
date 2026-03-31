-- Revert: schemas/agentic_db_app_public/tables/trips_chunks/columns/created_at/alterations/alt0000001763


ALTER TABLE "agentic_db_app_public".trips_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


