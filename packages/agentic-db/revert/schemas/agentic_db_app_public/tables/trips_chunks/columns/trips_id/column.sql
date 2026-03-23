-- Revert: schemas/agentic_db_app_public/tables/trips_chunks/columns/trips_id/column


ALTER TABLE agentic_db_app_public.trips_chunks 
  DROP COLUMN trips_id RESTRICT;


