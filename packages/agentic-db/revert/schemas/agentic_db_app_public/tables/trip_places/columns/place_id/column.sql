-- Revert: schemas/agentic_db_app_public/tables/trip_places/columns/place_id/column


ALTER TABLE agentic_db_app_public.trip_places 
  DROP COLUMN place_id RESTRICT;


