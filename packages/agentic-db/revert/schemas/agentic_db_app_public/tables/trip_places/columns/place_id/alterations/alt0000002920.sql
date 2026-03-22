-- Revert: schemas/agentic_db_app_public/tables/trip_places/columns/place_id/alterations/alt0000002920


ALTER TABLE agentic_db_app_public.trip_places 
  ALTER COLUMN place_id DROP NOT NULL;


