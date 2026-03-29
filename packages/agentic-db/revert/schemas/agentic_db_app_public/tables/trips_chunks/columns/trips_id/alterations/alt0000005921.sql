-- Revert: schemas/agentic_db_app_public/tables/trips_chunks/columns/trips_id/alterations/alt0000005921


ALTER TABLE agentic_db_app_public.trips_chunks 
  ALTER COLUMN trips_id DROP NOT NULL;


