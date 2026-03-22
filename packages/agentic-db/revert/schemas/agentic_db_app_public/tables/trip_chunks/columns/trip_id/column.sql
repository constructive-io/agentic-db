-- Revert: schemas/agentic_db_app_public/tables/trip_chunks/columns/trip_id/column


ALTER TABLE agentic_db_app_public.trip_chunks 
  DROP COLUMN trip_id RESTRICT;


