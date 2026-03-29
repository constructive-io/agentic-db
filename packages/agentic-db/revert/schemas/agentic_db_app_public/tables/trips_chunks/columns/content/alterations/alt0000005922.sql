-- Revert: schemas/agentic_db_app_public/tables/trips_chunks/columns/content/alterations/alt0000005922


ALTER TABLE agentic_db_app_public.trips_chunks 
  ALTER COLUMN content DROP NOT NULL;


