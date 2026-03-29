-- Revert: schemas/agentic_db_app_public/tables/trips_chunks/columns/updated_at/alterations/alt0000005925


ALTER TABLE agentic_db_app_public.trips_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


