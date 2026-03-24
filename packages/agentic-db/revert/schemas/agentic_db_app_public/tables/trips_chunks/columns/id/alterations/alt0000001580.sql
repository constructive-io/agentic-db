-- Revert: schemas/agentic_db_app_public/tables/trips_chunks/columns/id/alterations/alt0000001580


ALTER TABLE "agentic_db_app_public".trips_chunks 
  ALTER COLUMN id DROP NOT NULL;


