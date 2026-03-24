-- Revert: schemas/agentic_db_app_public/tables/trips_chunks/columns/content/alterations/alt0000001584


ALTER TABLE "agentic_db_app_public".trips_chunks 
  ALTER COLUMN content DROP NOT NULL;


