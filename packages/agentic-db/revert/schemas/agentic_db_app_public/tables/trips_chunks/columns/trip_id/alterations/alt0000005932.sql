-- Revert: schemas/agentic_db_app_public/tables/trips_chunks/columns/trip_id/alterations/alt0000005932


ALTER TABLE agentic_db_app_public.trips_chunks 
  ALTER COLUMN trip_id DROP NOT NULL;


