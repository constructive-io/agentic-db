-- Revert: schemas/agentic_db_app_public/tables/trip_places/constraints/trip_places_trip_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".trip_places 
  DROP CONSTRAINT trip_places_trip_id_fkey;


