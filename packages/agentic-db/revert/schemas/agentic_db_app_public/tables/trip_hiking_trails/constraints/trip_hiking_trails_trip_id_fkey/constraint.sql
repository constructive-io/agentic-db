-- Revert: schemas/agentic_db_app_public/tables/trip_hiking_trails/constraints/trip_hiking_trails_trip_id_fkey/constraint


ALTER TABLE agentic_db_app_public.trip_hiking_trails 
  DROP CONSTRAINT trip_hiking_trails_trip_id_fkey;


