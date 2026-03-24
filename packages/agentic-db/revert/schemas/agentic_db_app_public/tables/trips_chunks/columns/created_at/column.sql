-- Revert: schemas/agentic_db_app_public/tables/trips_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.trips_chunks 
  DROP COLUMN created_at RESTRICT;


